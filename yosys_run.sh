read_verilog iiitb_ba.v

# generic synthesis
synth -top iiitb_ba

# mapping to mycells.lib
dfflibmap -liberty /home/nisha/ASIC/lib/sky130_fd_sc_hd_tt_025c_1v80.lib
abc -liberty /home/nisha/ASIC/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog -noattr iiitb_ba_synth.v
