module fulladder_test();
  reg a,b,cin;
  wire sum,cout;
  integer k;
  fulladder e1(a,b,cin,sum,cout);
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  initial begin
    for(k=0;k<=7;k=k+1)
      begin
         #5
        {a,b,cin}=k;
        
       end
    #5 $finish;
  end
endmodule
