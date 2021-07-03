`timescale  1ns / 1ps  
module fifo_sync_tb();   

// FIFO_SYNC Parameters
parameter PERIOD      = 10  ;
parameter FIFO_DEPTH  = 4'd3;

// FIFO_SYNC Inputs
reg   clk                                  = 0 ;
reg   rstn                                 = 0 ;
reg   wre                                  = 0 ;
reg   rde                                  = 0 ;
reg   [7:0]  din                           = 0 ;

// FIFO_SYNC Outputs
wire  [7:0]  dout                          ;
wire  full                                 ;
wire  empty                                ;


always #(PERIOD/2) clk=~clk                ;

fifo_sync #(
    .FIFO_DEPTH ( FIFO_DEPTH ))
 u_FIFO_SYNC (
    .clk                     ( clk          ),
    .rstn                    ( rstn         ),
    .wre                     ( wre          ),
    .rde                     ( rde          ),
    .din                     ( din    [7:0] ),

    .dout                    ( dout   [7:0] ),
    .full                    ( full         ),
    .empty                   ( empty        )
);

initial
begin            
    $dumpfile("wave.vcd");        //生成的vcd文件名称
    $dumpvars(0, fifo_sync_tb);    //tb模块名称
end

initial
begin
  
  wre = 0;
  rde = 0;
  din = 8'h54;
  rstn  =  1;
  #(PERIOD*2) 
  rstn  =  0;
  #(PERIOD*2) 
  rstn  =  1;
  repeat (10)
  begin
  #(PERIOD * 3)
  wre = 0;
  #(PERIOD)
  wre = 1;
  #(PERIOD)
  wre = 0;
  end

  repeat (10)
  begin
  #(PERIOD * 3)
  rde = 0;
  #(PERIOD)
  rde = 1;
  #(PERIOD)
  rde = 0;
  $stop();
  end
end

endmodule
