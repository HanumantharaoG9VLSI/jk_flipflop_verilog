`timescale 1ns / 1ps


module jk_ff_tb();
reg clk,rst,j,k;
wire q,q_bar;

  jk_ff utt(j,k,clk,rst,q,q_bar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
     rst=1;
     #10;

     rst=0;
     #10;
     j = 1'b0; k = 1'b0;  #10;
     j = 1'b0; k = 1'b1;  #10;
     j = 1'b1; k = 1'b0;  #10;
     j = 1'b1; k = 1'b1; #10;
     $finish;
    end 
endmodule