module tb();
  
  reg clk,we,en;
  reg [4:0]addr;
  reg [7:0] in;
  wire [7:0]out;
  integer  i =0;
  
  Single_port_ram s(.clk(clk) ,.in(in),.addr(addr) , .we(we) ,.en(en),.out(out));
  
  initial begin
    
    clk  <= 0;
    en <= 0;
    we <=0;
    #4;
    en <= 1;
    we <=1;
    
    repeat(30)begin
      in <= $random() ;
      addr <= i ; 
      i = i+1;
      $display("we = %d memory[%d] = %d",we,addr,in);
      #4;
    end 
    
    we <= 0;
    en <= 1;
    
    i=0;
    
    repeat(30)begin 
      addr <= i ;
      i = i+1;
      $display("we = %d memory[%d] = %d",we,addr,out);
      #4;
    end 
    $finish();
  end 
  
  always #2 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 
  
endmodule
