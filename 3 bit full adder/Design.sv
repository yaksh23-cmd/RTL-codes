// Code your design here
module FullAdder(a,b,c,sum,cout);
  input a,b,c;
  output sum,cout;
  
  assign sum = a^b^c;
  assign cout = (a&b) | (b&c) | (c&a);
  
endmodule
