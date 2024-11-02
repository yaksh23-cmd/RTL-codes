// Code your testbench here
// or browse Examples
module tb();
  reg clk ,t,rst;
  wire [2:0]out;
  
  ripple_counter r(clk ,rst,out);
  
  initial begin 
    clk = 0;
    rst = 1; 
    #5 rst = 0;
    
    $monitor("output = %d",out);
  end 
  
  always #4 clk = ~clk ;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 
  
  initial #100 $finish();
  
endmodule
