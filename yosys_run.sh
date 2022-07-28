read_verilog iiitb_ba.v

# generic synthesis
synth -top bcd

# mapping to mycells.lib
dfflibmap -liberty /home/nisha.05.rajput/Desktop/iiitb_ba.lib
abc -liberty /home/nisha.05.rajput/Desktop/iiitb_ba.lib
clean
flatten
# write synthesized design
write_verilog -noattr synth_bcd.v
