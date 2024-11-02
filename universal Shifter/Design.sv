// Code your design here
module universal_shift_reg(clk,in,din,rst,out,mode);
  input clk,in,rst;
  input [3:0] din;
  input [1:0] mode;
  output reg [3:0] out;
  
  always@(posedge clk or posedge rst)begin 
    if(rst)begin 
       out <= 0;
    end 
    
    else begin
      case(mode)
        2'b00: out <= out;
        2'b01: out <= {in,out[2:0]};
        2'b10: out <= {out[2:0],in};
        2'b11: out <= din;
      endcase
    end
  end 
endmodule
