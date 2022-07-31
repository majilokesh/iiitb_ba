# iiitb_ba-BCD Adder 
4 bit BCD Adder is used to add one digit decimal number.

## About iverilog
Icarus Verilog is a Verilog simulation and synthesis tool. It operates as a compiler, compiling source code written in Verilog (IEEE-1364) into some target format. For batch simulation, the compiler can generate an intermediate form called vvp assembly. This intermediate form is executed by the vvp command. For synthesis, the compiler generates netlists in the desired format. 

## About GTKWave
GTKWave is a fully featured GTK+ based wave viewer for Unix, Win32, and Mac OSX which reads LXT, LXT2, VZT, FST, and GHW files as well as standard Verilog VCD/EVCD files and allows their viewing.

## Installing iverilog and GTKWave in Linux
Enter the following commands in Terminal

`$ sudo apt get update`

`$ sudo apt get install iverilog gtkwave`


## Steps to clone the repository and simulate the verilog code
To clone the repository and download the netlist files for simulation,enter the following commands in Terminal

   `$ git clone https://github.com/iiitbbcdadder/iiitb_ba`
   
   `$ cd asic`
   
   `$ iverilog -o bcdadd.out iiitb_ba.v iiitb_ba_tb.v`
   
   `$ ./bcdadd.out`
   
   `$ gtkwave bcdadd.vcd`








## OUTPUT WAVEFORM
![image](https://user-images.githubusercontent.com/110079800/181347832-a8093974-1f31-4a78-a8e3-da1dccb1c685.png)



## Synthesis of verilog code

### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.
## Steps to install Yosys in Linux

`$  sudo apt-get update`
`$  sudo apt-get -y install yosys

To synthesize

`$ yosys script bcd`

## Contributors
* Nisha B Rajput
* Kunal Ghosh
* Dantu Nandini Devi
* Banda Anusha

## Acknowledgments
* Kunal Ghosh,Director,VSD Corp. Pvt. Ltd.

## Contact Information
* Nisha B Rajput,M Tech student,International Institute of Information Technology,Bangalore nisha.05.rajput@gmail.com
* Kunal Ghosh,Director,VSD Corp.Pvt. Ltd. kunalghosh@gmail.com
* Dantu Nandini Devi,M Tech student,International Institute of Information Technology,Bangalore nandini.dantu@gmail.com
* Banda Anusha.M Tech student,International Institute of Information Technology,Bangalore 

