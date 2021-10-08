transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/winston/Documents/Acads/EE214/EXP4/DUT.vhd}
vcom -93 -work work {/home/winston/Documents/Acads/EE214/EXP4/Gates.vhd}
vcom -93 -work work {/home/winston/Documents/Acads/EE214/EXP4/shifter.vhd}

vcom -93 -work work {/home/winston/Documents/Acads/EE214/EXP4/Testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
