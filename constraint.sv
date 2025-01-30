class patten;
  rand int a[];
  constraint c1{a.size;}
  constraint c1{foreach (a[i])
    a[i]=(10*i)+9;}

  function void post_randomize();
    $display("the value of a is ",a);
  endfunction
endclass

  module top;
    patten h;
    initial
      begin
        h=new();
        h.randomize();
      end
  endmodule
