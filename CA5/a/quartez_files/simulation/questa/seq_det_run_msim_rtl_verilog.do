transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/alireze/Documents/GitHub/System-Digital/CA5/a {/home/alireze/Documents/GitHub/System-Digital/CA5/a/1.sv}

