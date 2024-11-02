// Code your design here
module ripple_counter(clk ,rst,out);
  
  input clk,rst;
  wire [2:0]q,q_bar;
  output [2:0]out;
  
  T_FF t1(.t(1), .clk(clk) ,.rst(rst),.q(q[0]),.q_bar(q_bar[0]));
  T_FF t2(.t(1), .clk(q_bar[0]) ,.rst(rst),.q(q[1]),.q_bar(q_bar[1]));
  T_FF t3(.t(1), .clk(q_bar[1]) ,.rst(rst),.q(q[2]),.q_bar(q_bar[2]));
  
  
  assign out = q;
endmodule


module T_FF(t, clk,rst ,q,q_bar);
  input  t, clk ,rst;
  output reg q,q_bar;
  
  always @(posedge clk)begin
    
    if(rst)begin 
       q <= 0;
       q_bar <= 1;
    end
    
    else if(t) begin
       q <= ~q;
       q_bar <= ~q_bar;
    end 
    
    else begin
      q <= q;
      q_bar <= q_bar;
    end 
  end
  
endmodule
