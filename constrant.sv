class patten;

rand int a[];

constraint c1{a.size==5;}
constraint c2{foreach(a[i])
                    if(i==0)
                        a[i]==1;
                            else
                                a[i]==(a[i-1]*10+1+i);}

function void post_randomize();
    $display("the value a is ",a);
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
