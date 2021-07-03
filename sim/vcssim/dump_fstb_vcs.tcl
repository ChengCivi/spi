global env
fsdbDumpfile "$env(demo_name).fsdb"
fsdbDumpvars 0 "SPI_MODULE_tb"
run 500us

