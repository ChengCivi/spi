onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PCLK
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/nREST
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/arst
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PWRITE
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PSEL
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PENABLE
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PREADY
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PSLVEER
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PADDR
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PWDATA
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/PRDATA
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/spi_int
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/pad_spi_sck_out
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/pad_spi_sck_oen
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/pad_spi_mosi_out
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/pad_spi_mosi_oen
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/pad_spi_miso_in
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/pad_spi_cs_out
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/pad_spi_cs_oen
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/sck_o
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/mosi_o
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/miso_i
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/csn
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/SPICR
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/SPISR
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/SPIDR
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_buffer
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/read_buffer
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/c_state
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/n_state
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/ie
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/spi_en
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/mode
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/CPOL
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/CPHA
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/clk_div
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/clk_en
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/clk_cnt
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/int_flg
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/int_tri
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_collision
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/collision_tri
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/Write_Full
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/Wrtie_Empty
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/Read_Full
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/Read_Empty
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/rfdout
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/wfdout
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/wfwe
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/wfre
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/rfwe
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/rfre
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/wr_en
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/wr_spicr_en
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/wr_spisr_en
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/wr_spidr_en
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/rd_en
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/bit_cnt
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/shifreg
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/clk
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/rstn
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/wre
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/rde
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/din
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/dout
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/full
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/empty
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/wpt
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/rpt
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/read_gap
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/write_gap
add wave -noupdate /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/i
add wave -noupdate -label WriteBufMem /tb_SPI_MODULE/u_SPI_MODULE/write_fifo_sync/mem
add wave -noupdate -label ReadBufmem /tb_SPI_MODULE/u_SPI_MODULE/read_fifo_sync/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {315816496 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {692487998 ps}