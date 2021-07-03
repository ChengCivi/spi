`timescale  1ns / 1ps

module SPI_MODULE_tb();

// SPI_MODULE Parameters
parameter PERIOD      = 20          ;
parameter ADDR_SPICR  = 32'h40004028;
parameter ADDR_SPISR  = 32'h4000402C;
parameter ADDR_SPIDR  = 32'h40004030;

// SPI_MODULE Inputs
reg    PCLK                                 = 0 ;
reg    PCLKG                                = 0 ;
reg    nREST                                = 0 ;
reg    arst                                 = 0 ;
wire   PWRITE                               ;
wire   PSEL                                 ;
wire   PENABLE                              ;
wire   PREADY                               ;
wire   PSLVEER                              ;
wire   [31:0]  PADDR                        ;
wire   [31:0]  PWDATA                       ;
reg   pad_spi_miso_in                       ;

// SPI_MODULE Outputs
wire  [31:0]  PRDATA                       ;
wire  spi_int                              ;
wire  pad_spi_sck_out                      ;
wire  pad_spi_sck_oen                      ;
wire  pad_spi_mosi_out                     ;
wire  pad_spi_mosi_oen                     ;
wire  pad_spi_cs_out                       ;
wire  pad_spi_cs_oen                       ;

initial
begin            
    //$vcdpluson();
    //$fsdbDumpfile("SPI_MODULE_tb.fsdb");
    //$fsdbDumpvars(0,SPI_MODULE_tb);
    //$fsdbDumpfile("SPI_MODULE_tb");
    //$fsdbDumpvasr();
    //$dumpfile("wave.vcd");        //生成的vcd文件名称
    //$dumpvars(0, SPI_MODULE_tb);    //tb模块名称
end
initial
begin
    forever #(PERIOD/2)  PCLK=~PCLK;
end

initial
begin
  pad_spi_miso_in = 1'b1;
  
  nREST  =  1;
  arst = 0;

  #(PERIOD*2) 
  nREST  =  0;
  #(PERIOD*2) 
  nREST  =  1;
  u_APB.apb_write(ADDR_SPICR,8'hE1);
  u_APB.apb_write(ADDR_SPIDR,8'h34);
  u_APB.apb_write(ADDR_SPICR,8'hE3);
  #(PERIOD*10) 
  u_APB.apb_write(ADDR_SPIDR,8'h56);
  #(PERIOD*10) 
  u_APB.apb_write(ADDR_SPIDR,8'h78);
  #(PERIOD*10)
  u_APB.apb_write(ADDR_SPIDR,8'hab);



end

SPI_MODULE #(
    .ADDR_SPICR ( ADDR_SPICR ),
    .ADDR_SPISR ( ADDR_SPISR ),
    .ADDR_SPIDR ( ADDR_SPIDR ))
 u_SPI_MODULE (
    .PCLK                    ( PCLK                     ),
    .nREST                   ( nREST                    ),
    .arst                    ( arst                     ),
    .PWRITE                  ( PWRITE                   ),
    .PSEL                    ( PSEL                     ),
    .PENABLE                 ( PENABLE                  ),
    .PADDR                   ( PADDR             [31:0] ),
    .PWDATA                  ( PWDATA            [31:0] ),
    .pad_spi_miso_in         ( pad_spi_miso_in          ),

    .PREADY                  ( PREADY                   ),
    .PSLVEER                 ( PSLVEER                  ),
    .PRDATA                  ( PRDATA            [31:0] ),
    .spi_int                 ( spi_int                  ),
    .pad_spi_sck_out         ( pad_spi_sck_out          ),
    .pad_spi_sck_oen         ( pad_spi_sck_oen          ),
    .pad_spi_mosi_out        ( pad_spi_mosi_out         ),
    .pad_spi_mosi_oen        ( pad_spi_mosi_oen         ),
    .pad_spi_cs_out          ( pad_spi_cs_out           ),
    .pad_spi_cs_oen          ( pad_spi_cs_oen           )
);

// APB_Master_Model Parameters
parameter dwidth  = 32;
parameter awidth  = 32;

APB_Master_Model #(
    .dwidth ( dwidth ),
    .awidth ( awidth ))
 u_APB (
    .PRDATA                  ( PRDATA                  [dwidth-1:0] ),
    .PCLK                    ( PCLK                                 ),
    .PCLKG                   ( PCLKG                                ),
    .nReset                  ( nREST                               ),

    .PWRITE                  ( PWRITE                               ),
    .PSEL                    ( PSEL                                 ),
    .PENABLE                 ( PENABLE                              ),
    .PSLVEER                 ( PSLVEER                              ),
    .PREADY                  ( PREADY                               ),
    .PWDATA                  ( PWDATA                               ),
    .PADDR                   ( PADDR                                )
);


endmodule