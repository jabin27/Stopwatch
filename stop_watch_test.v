module stop_watch_test;
reg clk,go,clr;
wire [3:0] d2,d1,d0;

initial clk= 1'b0;
always #0.5 clk = ~clk;
initial
begin
#0      go=0;	clr=1;
#5 clr=0;
#5 go =1;

end
stop_watch swatch(.clk(clk),.go(go),.clr(clr),.d2(d2),.d1(d1),.d0(d0));
endmodule
