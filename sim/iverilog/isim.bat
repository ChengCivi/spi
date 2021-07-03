md build
set SPI_ROOT=J:/Docker/share/spi
set RTLPATH=%SPI_ROOT%/rtl
set BENCH=%SPI_ROOT%/bench

echo "��ʼ����"
iverilog -g2012 -o wave   %BENCH%/SPI_MODULE_tb.v %BENCH%/APB_Master_Model.v %RTLPATH%/SPI_MODULE.v %RTLPATH%/fifo_sync.v 
echo "�Ѿ����ɲ���"
vvp -n wave -lxt2
cp wave.vcd wave.lxt
echo "�򿪲���"
gtkwave wave.lxt

