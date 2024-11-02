// Code your design here
module serial_inPO( si,clk,rst,out);
  
  input si,clk,rst;
  
  output reg[3:0] out;
  reg [3:0]q;
  
  always @(posedge clk)begin 
    
    if(rst)begin 
       out <= 0;
    end 
    
    else begin 
      q = out >> 1;
      out = {si,q[2:0]};
    end 
    
  end
  
  
endmodule
