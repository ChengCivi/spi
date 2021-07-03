.PHONY:	sim	clean	com	debug

export demo_name=${OUTPUT}

OUTPUT=spi_top

VCS = vcs -sverilog +v2k\
        -debug_all\
        -o ${OUTPUT}\
	-l compile.log\
	-R


SIM = ./simv \
	-l	run.log\
	-ucli -i ./dump_fstb_vcs.tcl\
	+fsdb+autoflush\
	

sim:
	${SIM}

	
clean:
	rm  -rf  ./csrc  *.daidir  *.log  *simv*  *.key


com:
	vcs -R \
	-full64 \
	+v2k \
	-fsdb \
	-sverilog \
	-f file_path.f \
	-l run.log \
	-LDFLAGS \
	-rdynamic \
	-P /usr/synopsys/verdi-L-2016.06-1/share/PLI/VCS/LINUX64/novas.tab /usr/synopsys/verdi-L-2016.06-1/share/PLI/VCS/LINUX64/pli.a \
	-debug_pp 



debug:
	verdi -f file_path.f -ssf ${demo_name}.fsdb -sv -nologo




