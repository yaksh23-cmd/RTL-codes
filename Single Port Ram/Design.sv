module Single_port_ram(clk ,in,addr , we ,en,out);
  
  input clk,we,en;
  input [4:0]addr;
  input [7:0] in;
  output [7:0]out;
  
  reg [7:0]mem[31:0];
  reg [7:0]temp;
  
  always @(posedge clk)begin 
    
    if(we & en)begin 
      mem[addr] <= in;
    end 
    
    else if(~we & en)begin 
      temp <= mem[addr];
    end 
    
    else begin
      temp = 8'b00000000;
    end 
  end
  
  assign out = temp;
  
endmodule
