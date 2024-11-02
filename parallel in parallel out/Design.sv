// Code your design here
module PIPO(in,clk,clr,out);
  input clk,clr;
  input [3:0]in;
  output reg [3:0] out;
  
  always @(posedge clk)begin 
    if(clr)begin
      out <= 0;
    end 
    else begin 
      out <= in;
    end
  end 
endmodule
