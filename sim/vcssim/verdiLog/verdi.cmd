debImport "-f" "file_path.f" "-sv"
debLoadSimResult /mnt/mydata/spi/sim/vcssim/spi_top.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 -3 "31" "1920" "971"
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE.read_fifo_sync" -win $_nTrace1
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
srcTBBTreeSelect -win $_nTrace1 -path "SPI_MODULE"
srcTBBTreeSelect -win $_nTrace1 -path "SPI_MODULE"
srcTBTreeAction -win $_nTrace1 -path "SPI_MODULE"
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "c_state" -win $_nTrace1
srcSelect -signal "n_state" -win $_nTrace1
srcSelect -signal "ie" -win $_nTrace1
srcSelect -signal "spi_en" -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -signal "CPOL" -win $_nTrace1
srcSelect -signal "CPHA" -win $_nTrace1
srcSelect -signal "clk_div" -win $_nTrace1
srcSelect -signal "clk_en" -win $_nTrace1
srcSelect -signal "clk_cnt" -win $_nTrace1
srcSelect -signal "write_buffer" -win $_nTrace1
srcSelect -signal "read_buffer" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "SPICR" -win $_nTrace1
srcSelect -toggle -signal "SPICR" -win $_nTrace1
srcSelect -signal "SPIDR" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "SPICR" -win $_nTrace1
srcSelect -signal "SPISR" -win $_nTrace1
srcSelect -toggle -signal "SPISR" -win $_nTrace1
srcSelect -signal "SPISR" -win $_nTrace1
srcSelect -signal "SPIDR" -win $_nTrace1
srcSelect -signal "write_buffer" -win $_nTrace1
srcSelect -signal "read_buffer" -win $_nTrace1
srcSelect -signal "c_state" -win $_nTrace1
srcSelect -signal "n_state" -win $_nTrace1
srcSelect -signal "ie" -win $_nTrace1
srcSelect -signal "spi_en" -win $_nTrace1
srcSelect -signal "mode" -win $_nTrace1
srcSelect -signal "CPOL" -win $_nTrace1
srcSelect -signal "CPHA" -win $_nTrace1
srcSelect -signal "clk_div" -win $_nTrace1
srcSelect -signal "clk_en" -win $_nTrace1
srcSelect -signal "clk_cnt" -win $_nTrace1
srcSelect -signal "int_flg" -win $_nTrace1
srcSelect -signal "int_tri" -win $_nTrace1
srcSelect -signal "write_collision" -win $_nTrace1
srcSelect -signal "collision_tri" -win $_nTrace1
srcSelect -signal "Write_Full" -win $_nTrace1
srcSelect -signal "Wrtie_Empty" -win $_nTrace1
srcSelect -signal "Read_Full" -win $_nTrace1
srcSelect -signal "Read_Empty" -win $_nTrace1
srcSelect -signal "rfdout" -win $_nTrace1
srcSelect -signal "wfdout" -win $_nTrace1
srcSelect -signal "wfwe" -win $_nTrace1
srcSelect -signal "wfre" -win $_nTrace1
srcSelect -signal "rfwe" -win $_nTrace1
srcSelect -signal "rfre" -win $_nTrace1
srcSelect -signal "wr_en" -win $_nTrace1
srcSelect -signal "wr_spicr_en" -win $_nTrace1
srcSelect -signal "wr_spisr_en" -win $_nTrace1
srcSelect -signal "wr_spidr_en" -win $_nTrace1
srcSelect -signal "rd_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 11442893.033143 -snap {("G1" 26)}
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvScrollUp -win $_nWave2 22
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvScrollDown -win $_nWave2 3
wvSetCursor -win $_nWave2 8331857.506361 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 38310970.963830 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 44462529.309648 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 52716518.988847 -snap {("G1" 6)}
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 11135099.284203 -snap {("G1" 6)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 8565460.987848 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 17753864.592994 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 27098003.852465 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 33638901.334094 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 50614087.655466 -snap {("G1" 8)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 100605232.693634 -snap {("G1" 9)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 72052959.501558 -snap {("G1" 16)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 11956386.292835 -snap {("G1" 14)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 7866043.613707 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 13629283.489097 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvExpandBus -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 39)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvCollapseBus -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvExpandBus -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 39)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSetPosition -win $_nWave2 {("G1" 6)}
wvCollapseBus -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetCursor -win $_nWave2 9384735.202492 -snap {("G1" 7)}
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 7515576.323988 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 13629283.489097 -snap {("G1" 6)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "PCLK" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 34 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvSelectSignal -win $_nWave2 {( "G1" 35 )} 
wvScrollUp -win $_nWave2 15
wvScrollUp -win $_nWave2 5
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvAddSignal -win $_nWave2 "/SPI_MODULE_tb/u_SPI_MODULE/PCLK"
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSelectSignal -win $_nWave2 {( "G1" 36 )} 
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 36)}
wvSetPosition -win $_nWave2 {("G1" 35)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 34)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 33)}
wvSetPosition -win $_nWave2 {("G1" 32)}
wvSetPosition -win $_nWave2 {("G1" 31)}
wvSetPosition -win $_nWave2 {("G1" 30)}
wvSetPosition -win $_nWave2 {("G1" 29)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 20)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 28)}
wvSetPosition -win $_nWave2 {("G1" 27)}
wvSetPosition -win $_nWave2 {("G1" 26)}
wvSetPosition -win $_nWave2 {("G1" 25)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 22)}
wvSetPosition -win $_nWave2 {("G1" 21)}
wvSetPosition -win $_nWave2 {("G1" 19)}
wvSetPosition -win $_nWave2 {("G1" 18)}
wvSetPosition -win $_nWave2 {("G1" 17)}
wvSetPosition -win $_nWave2 {("G1" 16)}
wvSetPosition -win $_nWave2 {("G1" 15)}
wvSetPosition -win $_nWave2 {("G1" 14)}
wvSetPosition -win $_nWave2 {("G1" 13)}
wvSetPosition -win $_nWave2 {("G1" 12)}
wvSetPosition -win $_nWave2 {("G1" 11)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 9)}
wvSetPosition -win $_nWave2 {("G1" 8)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 360605.096074 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 356041.719906 -snap {("G1" 9)}
wvSetCursor -win $_nWave2 105800.689983 -snap {("G1" 7)}
wvZoom -win $_nWave2 88840.141891 98879.569461
wvSetCursor -win $_nWave2 94225.778737 -snap {("G1" 7)}
wvZoom -win $_nWave2 40648.966112 43226.065277
wvZoom -win $_nWave2 41960.797899 42023.419000
wvSetCursor -win $_nWave2 41989.474852 -snap {("G1" 7)}
srcActiveTrace "SPI_MODULE_tb.u_SPI_MODULE.c_state\[4:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue xxxxx
nsMsgSwitchTab -tab trace
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
wvZoom -win $_nWave2 40003.423677 40004.906295
wvSetCursor -win $_nWave2 40004.008410 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 40000.095839 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 40000.101382 -snap {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 373238.976643 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 369848.801141 -snap {("G1" 7)}
tfgGenerate -incr -ref {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#370000} -startWithStmt -schFG
tfgNodeTraceActiveValue -win $_tFlowView3 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]} -stopLevel 10
tfgFolderClick  -funcblk -win $_tFlowView3 {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#370000}
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 349931.520070 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 351444.991276 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 349931.520070 -snap {("G1" 8)}
wvSetCursor -win $_nWave2 369848.801141 -snap {("G1" 7)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
srcDeselectAll -win $_nTrace1
wvSetOptions -win $_nWave2 -hierName on
wvSetOptions -win $_nWave2 -hierName off
wvSetOptions -win $_nWave2 -cursorMarkerValue on
wvSetCursor -win $_nWave2 366519.164488 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 50671.015977 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 55090.351898 -snap {("G1" 6)}
wvZoomAll -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
assCtrlInvoke -statistic
tfgFolderClick  -funcblk -win $_tFlowView3 {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#370000}
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvExpandBus -win $_nWave2 {("G1" 7)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvCollapseBus -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G1" 7)}
wvScrollDown -win $_nWave2 3
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 6
wvScrollDown -win $_nWave2 5
wvScrollUp -win $_nWave2 3
wvScrollDown -win $_nWave2 5
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSetCursor -win $_nWave2 163299065.420561 -snap {("G1" 28)}
srcActiveTrace "SPI_MODULE_tb.u_SPI_MODULE.wfre" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 370000 -TraceValue 0
nsMsgSwitchTab -tab trace
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
tfgGenerate -incr -ref {SPI_MODULE_tb.u_SPI_MODULE.wfre#164450000} -startWithStmt -schFG
tfgNodeTraceActiveValue -win $_tFlowView4 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre} -stopLevel 10
tfgNodeClick  -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#164450000} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#164430000} {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164370000} {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000} {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164450000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164450000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164450000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#164430000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#164430000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#164450000} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#164430000} {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000} {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164330000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000} {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164370000} {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164350000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164370000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164370000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164390000} {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164370000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164390000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]#164390000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.clk_en#164390000} {SPI_MODULE_tb.u_SPI_MODULE.clk_cnt[10:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
tfgNodeShowActiveStatement -win $_tFlowView4 -folder {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]#164430000} {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]}
tfgFolderClick  -funcblk -win $_tFlowView4 {SPI_MODULE_tb.u_SPI_MODULE.n_state[4:0]#164410000}
verdiDockWidgetSetCurTab -dock windowDock_tFlowView_3
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
wvSelectSignal -win $_nWave2 {( "G1" 28 )} 
tfgGenerate -incr -ref {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000} -startWithStmt -schFG
tfgNodeTraceActiveValue -win $_tFlowView5 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre} -stopLevel 10
tfgCloseViewer -win $_tFlowView4
tfgCloseViewer -win $_tFlowView3
tfgFolderClick  -funcblk -win $_tFlowView5 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000}
tfgFolderClick  -funcblk -win $_tFlowView5 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000}
tfgNodeShowActiveStatement -win $_tFlowView5 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
tfgFolderClick  -funcblk -win $_tFlowView5 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000}
tfgSCHDisplayAll -win $_tFlowView5
tfgSetOption -win $_tFlowView5 -showNSchema on
tfgFolderClick  -funcblk -win $_tFlowView5 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000}
tfgFolderClick  -funcblk -win $_tFlowView5 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000}
tfgNodeShowActiveStatement -win $_tFlowView5 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
tfgSCHDisplayAll -win $_tFlowView5
schSelect -win $_nSchema6 -inst \
          "SPI_MODULE_tb.u_SPI_MODULE.SPI_MODULE\(@1\):FSM0:219:302:FSM"
schPushViewIn -win $_nSchema6
fsmSetCurrentWindow -win $_nState7
fsmResizeWindow 0 28 1317 392 -win $_nState7
fsmResizeWindow 0 28 1317 392 -win $_nState7
fsmResizeWindow 0 28 1317 392 -win $_nState7
fsmSelect -add -state "IDLE_STA" -win $_nState7
fsmSelect -state "LEADING_EDGE" -win $_nState7
fsmSelect -state "IDLE_STA" -win $_nState7
fsmSelect -state "LEADING_EDGE" -win $_nState7
tfgFolderClick  -funcblk -win $_tFlowView5 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000}
tfgFolderClick  -funcblk -win $_tFlowView5 {SPI_MODULE_tb.u_SPI_MODULE.wfre#164410000}
tfgNodeShowActiveStatement -win $_tFlowView5 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 210495327.102804 -snap {("G1" 28)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 160781931.464174 -snap {("G1" 28)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 164557632.398754 -snap {("G1" 28)}
srcActiveTrace "SPI_MODULE_tb.u_SPI_MODULE.wfre" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 164470000 -TraceValue 0
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 166130841.121495 -snap {("G1" 28)}
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 165501557.632399 -snap {("G1" 27)}
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 163928348.909657 -snap {("G1" 27)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 164485981.308411 -snap {("G1" 29)}
wvSetCursor -win $_nWave2 164485981.308411 -snap {("G1" 28)}
wvSetCursor -win $_nWave2 164485981.308411 -snap {("G1" 28)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetCursor -win $_nWave2 164313019.859813 -snap {("G1" 27)}
wvSetCursor -win $_nWave2 1772225.467289 -snap {("G1" 28)}
srcActiveTrace "SPI_MODULE_tb.u_SPI_MODULE.wfre" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 370000 -TraceValue 0
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
wvSetCursor -win $_nWave2 321261.682243 -snap {("G1" 28)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 349940.581039 -snap {("G1" 28)}
srcActiveTrace "SPI_MODULE_tb.u_SPI_MODULE.wfre" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 40000 -TraceValue 0
srcHBSelect "SPI_MODULE_tb.u_SPI_MODULE" -win $_nTrace1
tfgGenerate -incr -ref {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} -startWithStmt -schFG
tfgNodeTraceActiveValue -win $_tFlowView8 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre} -stopLevel 10
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgSCHDisplayAll -win $_tFlowView8
tfgSetOption -win $_tFlowView8 -showSrcOnTip on
tfgSetOption -win $_tFlowView8 -showSrcOnTip off
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgNodeShowActiveStatement -win $_tFlowView8 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} -disableViewSync
tfgNodeTraceActiveValue -win $_tFlowView8 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre} -stopLevel 10
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} -disableViewSync
tfgNodeClick  -win $_tFlowView8 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgLevelClick -win $_tFlowView8  -level 999997
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.write_fifo_sync.empty#330000}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgNodeClick  -win $_tFlowView8 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]}
tfgNodeClick  -win $_tFlowView8 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]}
tfgNodeShowActiveStatement -win $_tFlowView8 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]}
tfgNodeClick  -win $_tFlowView8 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]}
tfgNodeClick  -win $_tFlowView8 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]}
tfgNodeShowActiveStatement -win $_tFlowView8 -folder {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000} {SPI_MODULE_tb.u_SPI_MODULE.c_state[4:0]}
tfgLevelClick -win $_tFlowView8  -level 999999
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
tfgNodeShowActiveStatement -win $_tFlowView8 -folder {group_0} {SPI_MODULE_tb.u_SPI_MODULE.wfre}
tfgSetOption -win $_tFlowView8 -showNWave on
tfgFolderClick  -funcblk -win $_tFlowView8 {SPI_MODULE_tb.u_SPI_MODULE.wfre#350000}
wvSetCursor -win $_nWave2 377168.725510 -snap \
           {("wfre#350000.000_driverSigAll" 1)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "wfre#350000.000_driverSigAll" 2 )} 
wvSetCursor -win $_nWave2 364087.047161 -snap \
           {("wfre#350000.000_driverSigAll" 0)}
debExit
