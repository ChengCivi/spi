`timescale  1ns / 1ps  
module fifo_sync (
  input  wire clk,
  input  wire rstn,
  input  wire wre,
  input  wire rde,
  input  wire [7:0]din,
  output wire [7:0]dout,
  output wire full,
  output wire empty
);
parameter FIFO_DEPTH = 4'd3;
/*3bit Addr Extend 1 bit For Direction*/
reg [FIFO_DEPTH:0]wpt;
reg [FIFO_DEPTH:0]rpt;
reg [FIFO_DEPTH:0]read_gap;
reg [FIFO_DEPTH:0]write_gap;
reg [7:0]mem[FIFO_DEPTH - 1:0];

integer i;
always @(posedge clk or negedge rstn) begin
  if(!rstn) begin
    for (i = 0;i < (1 << FIFO_DEPTH);i = i+1 ) begin
      mem[i] <= 8'b0;
    end
  end else if(wre & ~full) begin
    mem[wpt] <= din;
  end
end
/* write Addr pointer  */
always @(posedge clk or negedge rstn) begin
  if(!rstn)begin
    wpt <= {FIFO_DEPTH{1'b0}};
  end else begin
    if(wre & ~full)
      wpt <= wpt + 1'b1;
  end
end
/* Read Addr pointer */
always @(posedge clk or negedge rstn) begin
  if(!rstn)begin
    rpt <= {FIFO_DEPTH{1'b0}};
  end else begin
    if(rde & ~empty)
      rpt <= rpt + 1'b1;
  end
end
/* output data */
assign dout = mem[rpt[FIFO_DEPTH - 1:0]];


/* Cal Gap  */
always @(*) begin
  read_gap = wpt - rpt;
end

always @(*) begin
  write_gap =  (1 << (FIFO_DEPTH)) - wpt + rpt;
end

assign full = (write_gap)?(1'b0):(1'b1);
assign empty = (read_gap)?(1'b0):(1'b1);

endmodule

