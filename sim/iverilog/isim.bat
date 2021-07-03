md build
set SPI_ROOT=J:/Docker/share/spi
set RTLPATH=%SPI_ROOT%/rtl
set BENCH=%SPI_ROOT%/bench

echo "开始编译"
iverilog -g2012 -o wave   %BENCH%/SPI_MODULE_tb.v %BENCH%/APB_Master_Model.v %RTLPATH%/SPI_MODULE.v %RTLPATH%/fifo_sync.v 
echo "已经生成波形"
vvp -n wave -lxt2
cp wave.vcd wave.lxt
echo "打开波形"
gtkwave wave.lxt

