 module iiitb_ba_tb;



    // Inputs

    reg [3:0] a;

    reg [3:0] b;

    reg carry_in;



    // Outputs

    wire [3:0] sum;

    wire carry;



    // Instantiate the Unit Under Test (UUT)

    iiitb_ba uut (

        .a(a), 

        .b(b), 

        .carry_in(carry_in), 

        .sum(sum), 

        .carry(carry)

    );



    initial begin

    $dumpfile ("bcdadd.vcd"); 

	$dumpvars(0, iiitb_ba_tb);

        // Apply Inputs

        a = 0;  b = 0;  carry_in = 0;   #100;

        a = 6;  b = 9;  carry_in = 0;   #100;

        a = 3;  b = 3;  carry_in = 1;   #100;

        a = 4;  b = 5;  carry_in = 0;   #100;

        a = 8;  b = 2;  carry_in = 0;   #100;

        a = 9;  b = 9;  carry_in = 1;   #100;

    end

      

endmodule



