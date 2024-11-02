// Code your testbench here
// or browse Examples
module tb();
  reg clk,clr;
  reg [3:0]in;
  wire [3:0] out;
  
  PIPO p(.in(in),.clk(clk),.clr(clr),.out(out));
  
  initial begin 
    clk = 0;
    clr = 1;
    in = 0;
    
    #5 clr = 0;
  end
  
  always #2 clk = ~clk;
  always #4 in = ~in;
  
  initial #150 $stop();
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
endmodule
