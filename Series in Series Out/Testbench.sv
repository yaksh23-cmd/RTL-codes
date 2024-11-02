// Code your testbench here
// or browse Examples
module tb();
  reg si,clk,rst;
  wire out;
  
  serial_inPO S(.si(si),.clk(clk),.rst(rst),.out(out));
  
  initial begin 
    clk = 1'b0;
    rst = 1'b1;
    si = 0;
    #1 rst = 1'b0;
  end 
  
  always #2 clk = ~clk;
  always #4 si = ~si;
  
  initial #100 $finish();
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
