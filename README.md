# iiitb_ba-BCD Adder 
4 bit BCD Adder is used to add one digit decimal number.

## Introduction
BCD stands for binary coded decimal. It is used to perform the addition of BCD numbers. A BCD digit can have any of ten possible four-bit representations. Suppose, we have two 4-bit numbers A and B. The value of A and B can vary from 0(0000 in binary) to 9(1001 in binary) because we are considering decimal numbers. 

## Block Diagram

![](https://media.geeksforgeeks.org/wp-content/uploads/AB.png)

The output will vary from 0 to 18 if we are not considering the carry from the previous sum. But if we are considering the carry, then the maximum value of output will be 19 (i.e. 9+9+1 = 19). When we are simply adding A and B, then we get the binary sum. Here, to get the output in BCD form, we will use BCD Adder.

Example 1:

Input :
A = 0111  B = 1000 
Output :
Y = 1 0101

Explanation: We are adding A(=7) and B(=8). 
The value of binary sum will be 1111(=15). 
But, the BCD sum will be 1 0101, 
where 1 is 0001 in binary and 5 is 0101 in binary.

Example 2:

Input :
A = 0101  B = 1001
Output :
Y = 1 0100

Explanation: We are adding A(=5) and B(=9). 
The value of binary sum will be 1110(=14). 
But, the BCD sum will be 1 0100, 
where 1 is 0001 in binary and 4 is 0100 in binary.

Note: If the sum of two numbers is less than or equal to 9, then the value of BCD sum and binary sum will be same otherwise they will differ by 6(0110 in binary). Now, lets move to the table and find out the logic when we are going to add “0110”. 

![](https://media.geeksforgeeks.org/wp-content/uploads/TT-1.png)

We are adding “0110” (=6) only to the second half of the table. The conditions are:

If C’ = 1 (Satisfies 16-19)
If S3′.S2′ = 1 (Satisfies 12-15)
If S3′.S1′ = 1 (Satisfies 10 and 11)
So, our logic is

C' + S3'.S2' + S3'.S1' = 1

## Circuit Diagram

![](https://media.geeksforgeeks.org/wp-content/uploads/CC.png)

## Applications of BCD Adder

* Adder is used in digital devices and electronic calculators for performing arithmetic operations like addition, subtraction,     multiplication and division.
* They are also used in microcontrollers also for PC (program counter) and timers.
* In processors, they are used to calculate addresses, tables and similar operations
* It is also used in Digital signal processor and networking systems.

## About iverilog
Icarus Verilog is a Verilog simulation and synthesis tool. It operates as a compiler, compiling source code written in Verilog (IEEE-1364) into some target format. For batch simulation, the compiler can generate an intermediate form called vvp assembly. This intermediate form is executed by the vvp command. For synthesis, the compiler generates netlists in the desired format. 

## About GTKWave
GTKWave is a fully featured GTK+ based wave viewer for Unix, Win32, and Mac OSX which reads LXT, LXT2, VZT, FST, and GHW files as well as standard Verilog VCD/EVCD files and allows their viewing.

## Installing iverilog and GTKWave in Linux
Enter the following commands in Terminal

`$ sudo apt get update`

`$ sudo apt get install iverilog gtkwave`


## Steps to clone the git repository and simulate the verilog code
To clone the repository and download the netlist files for simulation,enter the following commands in Terminal

   `$ git clone https://github.com/iiitbbcdadder/iiitb_ba`
   
   `$ cd ASIC`
   
   `$ iverilog -o bcdadd.out iiitb_ba.v iiitb_ba_tb.v`
   
   `$ ./bcdadd.out`
   
   `$ gtkwave bcdadd.vcd`








## Output Waveform After Simulation
![image](https://user-images.githubusercontent.com/110079800/181347832-a8093974-1f31-4a78-a8e3-da1dccb1c685.png)



## Synthesis of verilog code

### About Yosys
Yosys is a framework for Verilog RTL synthesis. It currently has extensive Verilog-2005 support and provides a basic set of synthesis algorithms for various application domains.
## Steps to install Yosys in Linux

`$  sudo apt-get update`

`$  sudo apt-get -y install yosys`

To synthesize

`$ yosys script bcd`

## Author
* Nisha B Rajput

## Contributors
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

