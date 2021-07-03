`timescale 1ns / 1ps

module APB_Master_Model
(
PWRITE                ,
PRDATA                ,
PSEL                  ,
PENABLE               ,
PSLVEER               , 
PREADY                ,
PCLK                  ,
PCLKG                 ,
nReset                ,
PWDATA                ,
PADDR
);
parameter dwidth = 32;
parameter awidth = 32;

output reg PWRITE              ;
input  [dwidth-1:0] PRDATA  ;
output reg PSEL                ;
output reg PENABLE             ;
input  wire PSLVEER             ;
input  wire PREADY              ;
input  wire PCLK                ;
input  wire PCLKG               ;
input  wire nReset              ;
output reg[dwidth-1:0] PWDATA  ;
output reg[awidth-1:0] PADDR   ;


reg [dwidth   -1:0] q;


initial
begin

  PADDR = {awidth-2{1'bx}};
  PWDATA = {dwidth-2{1'bx}};
  PSEL = 0;
  PWRITE = 0;
  PENABLE = 0;
//   PREADY = 1;
//   PSLVEER = 1;
end

task apb_write(input [awidth-1:0] addr, input [dwidth-1:0] data);
begin
        @(negedge PCLK);
            PSEL     =  1'b1     ;
            PENABLE  =  1'b0     ;
            PWRITE   =  1'b1     ;
            PADDR    =  addr     ;
            PWDATA   =  data     ;
        @(posedge PCLK);
 
        @(negedge PCLK);
            PENABLE  =  1'b1     ;
        @(posedge PCLK);
 
        while(PREADY != 1'b1) @(posedge PCLK);
            PSEL     =  1'b0     ;
            PENABLE  =  1'b0     ;
            PWRITE   =  1'b0     ;
            //PADDR    =  32'b0    ;
            //PWDATA   =  32'b0    ;
        repeat (10) @(posedge PCLK);
    
end
endtask //apb_write


task apb_read(input [awidth-1:0] addr, output [dwidth-1:0] data);
begin
        @(negedge PCLK);
            PSEL     =  1'b1     ;
            PENABLE  =  1'b0     ;
            PWRITE   =  1'b0     ;
            PADDR    =  addr     ;
        @(posedge PCLK);
 
        @(negedge PCLK);
            PENABLE  =  1'b1     ;
        @(posedge PCLK);
 
        while(PREADY != 1'b1) @(posedge PCLK);
            data     =  PRDATA     ;
            PSEL     =  1'b0     ;
            PENABLE  =  1'b0     ;
            PWRITE   =  1'b0     ;
            //PADDR    =  32'b0    ;
            //PRDATA   =  32'b0    ;
        repeat (10) @(posedge PCLK);
end
endtask //apb_write


task  apb_cmp(input [awidth -1:0]	a,input [dwidth -1:0] d_exp);
begin
	apb_read (a, q);
	if (d_exp !== q)
			$display("Data compare error. Received %h, expected %h at time %t", q, d_exp, $time);
end
endtask //apb_write


endmodule //APB_Master_Model
