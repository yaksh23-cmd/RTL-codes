// Code your design here
module Serial_inSO(input si,clk,rst,
                   output out);
   
  reg [3:0]q ;
  
  always@(posedge clk)begin 
    
    if(rst)begin
       q<= 4'b0;
    end 
    else begin 
       q<= q>>1;
      q[3] <= si;
    end 
  end
  
  assign out = q[0];
  
endmodule
