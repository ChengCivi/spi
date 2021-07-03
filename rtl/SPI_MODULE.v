`timescale  1ns / 1ps  
module SPI_MODULE (
input  wire PCLK            ,
input  wire nREST           ,
input  wire arst            ,
input  wire PWRITE          ,
input  wire PSEL            ,
input  wire PENABLE         ,
output  wire PREADY          ,
output  wire PSLVEER         ,
input  wire [31:0]  PADDR   ,
input  wire [31:0]  PWDATA  ,
output reg  [31:0]  PRDATA  ,
output wire spi_int         ,
output wire pad_spi_sck_out ,
output wire pad_spi_sck_oen ,
output wire pad_spi_mosi_out,
output wire pad_spi_mosi_oen,
input  wire pad_spi_miso_in ,
output wire pad_spi_cs_out  ,
output wire pad_spi_cs_oen  

);
parameter ADDR_SPICR = 32'h40004028;
parameter ADDR_SPISR = 32'h4000402C;
parameter ADDR_SPIDR = 32'h40004030;
/* ����˿��ź����ڲ��ź� */
reg sck_o;
wire mosi_o;
wire miso_i;
reg csn;

/*Reg Definition*/
reg [7:0] SPICR ;
wire [7:0] SPISR ;
wire [15:0] SPIDR ;


reg [7:0]write_buffer;
reg [7:0]read_buffer;

reg [4:0]c_state;
reg [4:0]n_state;

wire ie;
wire spi_en;
wire mode;
wire CPOL;
wire CPHA;
wire [2:0]clk_div;
wire clk_en;
reg [10:0]clk_cnt;
reg int_flg;/* �ж��ϱ��źţ��͸��Ĵ������ź� */
reg int_tri; /* �жϴ����źţ��ɵײ��߼����� */
reg write_collision;
wire collision_tri;

wire Write_Full;
wire Wrtie_Empty;
wire Read_Full;
wire Read_Empty;
wire [7:0]rfdout;
wire [7:0]wfdout;
wire wfwe;
reg wfre;
reg rfwe;
wire rfre;

wire wr_en;
wire wr_spicr_en;
wire wr_spisr_en;
wire wr_spidr_en;
wire rd_en;

// ʱ��Ҫ����penableΪ����һ�İ�����д��ȥ������Ҫ����ǰһ���ж��Ƿ�Ҫд,�ӻ�ֻ���жϽ���Setup�׶ξ�׼���������ַ׼����һ�׶ζ�д�������ݾͺá�
assign wr_en = (PSEL & ~PENABLE & PWRITE);
assign wr_spicr_en = (wr_en && (PADDR[31:0] == ADDR_SPICR));
assign wr_spisr_en = (wr_en && (PADDR[31:0] == ADDR_SPISR));
assign wr_spidr_en = (wr_en && (PADDR[31:0] == ADDR_SPIDR));

assign rd_en = (PSEL & ~PWRITE);

assign rfre = rd_en & (PADDR[31:0] == ADDR_SPIDR);

/*Control Signal Wrtie*/
always @(posedge PCLK or negedge nREST) begin
if(!nREST) begin
  SPICR <= 8'b0;
end
else if(wr_spicr_en)
    SPICR <= (PWDATA[7:0] | 8'b100);/* Master Mode Select Force to 1 */
end



assign ie = SPICR[0]        ;
assign spi_en = SPICR[1]    ;
assign mode = 1'b1          ;
assign CPOL = SPICR[3]      ;
assign CPHA = SPICR[4]      ;
assign clk_div = SPICR[7:5] ;

assign spi_int = (ie) & (int_flg)   ;
assign clk_en = ~|clk_cnt           ;


always @(posedge PCLK) begin
  if((spi_en) & ((|clk_cnt) & |c_state)) begin/* ʹ�ܿ��˵�����£���������г�ֵ����״̬������idle����ʼ���� */
    clk_cnt <= clk_cnt - 11'b1;
  end else begin
    case (clk_div)/* Ϊ����һ�������ڣ�����en�����źţ�������50ռ�ձȵ�ʱ�� */
      3'd0:clk_cnt <= 11'h0     ;/* 2x */
      3'd1:clk_cnt <= 11'h3     ;/* 8x 2^(n+1) = 8*/
      3'd2:clk_cnt <= 11'h7     ;/* 16x */
      3'd3:clk_cnt <= 11'h1f    ;/* 64x */
      3'd4:clk_cnt <= 11'h3f    ;/* 128x */
      3'd5:clk_cnt <= 11'h7f    ;/* 256 */
      3'd6:clk_cnt <= 11'hff    ;/* 512  512/2-1*/
      3'd7:clk_cnt <= 11'h1ff   ;/* 1024 */
    endcase
  end
end


assign SPISR = {Read_Empty,Read_Full,Wrtie_Empty,Write_Full,write_collision,int_flg};
assign SPIDR = {read_buffer,write_buffer};

always @(posedge PCLK or negedge nREST) begin
if (!nREST) begin
  read_buffer <= 8'b0;
end else if(rfre)begin
  read_buffer <= rfdout;
end
end

/* Interrupt Signal */
always @(posedge PCLK or negedge nREST) begin
if(!nREST) begin
  int_flg <= 1'b0;
end
else 
    int_flg <= (int_flg | int_tri) & ~(wr_spisr_en & PWDATA[0]);/* д 1 ���� */
end


/* FIFO Write collision Signal  */
always @(posedge PCLK or negedge nREST) begin
if(!nREST) begin
  write_collision <= 1'b0;
end
else 
    write_collision <= (write_collision | collision_tri) & ~(wr_spisr_en & PWDATA[1]);/* д 1 ���� */
end

assign collision_tri = (Write_Full & wr_spidr_en)?(1'b1):(1'b0);

/* Write Buffer Reg Signal 
 �͸��ڲ����ģ����������ź��͸�fifo���ݻ��Ӻ�һ�� 
����ʹ��ֱ��ʹ���������͵�FIFO���룬��дʹ����FIFO��д��ʹ��
*/
always @(posedge PCLK or negedge nREST) begin
if (!nREST) begin
  write_buffer <= 8'b0;
end else if(wr_spidr_en)begin
  write_buffer <= PWDATA[7:0];
end
end

assign wfwe = wr_spidr_en & wr_en;

// always @(posedge PCLK or negedge nREST) begin
// if (!nREST) begin
//   wfwe <= 1'b0;
// end else begin
//   if(wr_spidr_en)
//     wfwe  <= 1'b1;
//   else
//     wfwe <= 1'b0;
// end
// end




/* APB����߼����߼� */
always @(*) begin
  if(!nREST) begin
    PRDATA = 32'b0;
  end
  else begin
    if (rd_en) begin
      case (PADDR)
        ADDR_SPICR: PRDATA = SPICR;
        ADDR_SPIDR: PRDATA = SPIDR;
        ADDR_SPISR: PRDATA = SPISR;
      endcase
    end
  end
end

localparam IDLE_STA     = 4'b00;
localparam LEADING_EDGE   = 4'b01;
localparam FALLING_EDGE    = 4'b11;
localparam END_STA      = 4'b10;


reg [3:0]bit_cnt;
reg [7:0]shifreg;
assign pad_spi_mosi_out  = mosi_o;
assign pad_spi_mosi_oen = 1'b0;
assign miso_i = pad_spi_miso_in;
assign pad_spi_sck_out = sck_o;
assign pad_spi_sck_oen = 1'b0;
assign pad_spi_cs_out = csn;
assign pad_spi_cs_oen = 1'b0;
assign mosi_o = shifreg[7];
/* �������״̬�� */

always @(posedge PCLK or negedge nREST) begin
  if(!nREST) begin
    c_state <= IDLE_STA;
  end
  else begin
    c_state <= n_state;
  end
end

always @(posedge PCLK or negedge nREST) begin
  if(!nREST) begin
    csn <= 1'b1;
    n_state <= IDLE_STA;
    bit_cnt <= 4'b0;
    sck_o <= CPOL;
    shifreg <= 8'b0;
    int_tri <= 1'b0;
    rfwe <= 1'b0;
    wfre <= 1'b0;
  end
  else begin
    // rfwe <= 1'b0;
    // wfre <= 1'b0;
    case (c_state)
    IDLE_STA: 
    begin
      bit_cnt <= 4'd8;
      int_tri <= 1'b0;
      if (~Wrtie_Empty) begin
        //wfre <= 1'b1;/*bug ��һ֮���¸�����n_state�ű��ɵ����ٹ�һ�����ڲ����䣬�൱��wre�������������ڣ�����������������*/
        if(~wfre)begin
          wfre <= 1'b1;
          shifreg <= wfdout;
        end
        else begin
          wfre <= 1'b0;
          shifreg <= shifreg;
        end
        n_state <= LEADING_EDGE;
        csn <= 1'b0;
      end 
      else begin
        wfre <= 1'b0;
        shifreg <= 4'd8;
        n_state <= IDLE_STA;
        csn <= 1'b1;
      end
    end
    LEADING_EDGE:
    begin
      rfwe <= 1'b0;
      wfre <= 1'b0;
      if(clk_en)begin
        sck_o <= ~sck_o;
        bit_cnt <= bit_cnt - 1'b1;
        n_state <= FALLING_EDGE;  
        csn <= 1'b0;
        if(CPHA == 1'b1)/* CPHA = 0 �ڵ�һ���شӻ��������ڶ����������ı����� */
        begin
          shifreg <= {shifreg[6:0],miso_i};/* ���в��������ݽ�����һ��ʱ���ؽ������浽���� */
        end
      end
     end
   FALLING_EDGE:
   begin
     rfwe <= 1'b0;
     wfre <= 1'b0;
     if(clk_en)begin
        sck_o <= ~sck_o;
        csn <= 1'b0;
        if(CPHA == 1'b0)/* CPHA = 0 �ڵ�һ���شӻ��������ڶ����������ı����� */
          shifreg <= {shifreg[6:0],miso_i};/* ���в��������ݽ�����һ��ʱ���ؽ������浽���� */
        if(~|bit_cnt) begin
          n_state <= IDLE_STA;
          int_tri <= 1'b1;
          rfwe <= 1'b1;/* ���ͽ�����ɣ���������д��ReadFIFO  */
        end
        else
          n_state <= LEADING_EDGE;
      end
   end
    endcase
  end
end

fifo_sync write_fifo_sync(
.clk    (PCLK),
.rstn   (nREST),
.wre    (wfwe),
.rde    (wfre),
.din    (PWDATA[7:0]),
.dout   (wfdout),
.full   (Write_Full),
.empty  (Wrtie_Empty)

);

fifo_sync read_fifo_sync(
.clk    (PCLK),
.rstn   (nREST),
.wre    (rfwe),
.rde    (rfre),
.din    (shifreg),
.dout   (rfdout),
.full   (Read_Full),
.empty  (Read_Empty)

);


assign PSLVEER = 1'b0;
assign PREADY = 1'b1;

endmodule

