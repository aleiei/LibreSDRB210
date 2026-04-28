transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+gen_clks  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gen_clks xil_defaultlib.glbl

do {gen_clks.udo}

run 1000ns

endsim

quit -force
