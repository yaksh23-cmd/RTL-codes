// Code your testbench here
// or browse Examples
module TestFA;
  reg a,b,c;
  wire sum ,cout;
  FullAdder F(.a(a),.b(b),.c(c),.sum(sum),.cout(cout));
  integer i;
  
   //dumping file for waveform 
  initial
    begin
    $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
      for(i=0;i<8;i = i+1)begin
        {a,b,c} = i;
        
        #5 $display("T = %2d a=%b b=%b c=%b sum=%b cout=%b",$time,a,b,c,sum,cout );
      end
      #5 $finish;
    end
endmodule
  

  
