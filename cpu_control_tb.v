module cpu_control_tb;
reg A,B,C;
wire Y;
cpu_control c1(Y,A,B,C);
initial
begin
A=0;B=0;C=0;#10;
A=0;B=0;C=1;#10;
A=0;B=1;C=0;#10;
A=0;B=1;C=1;#10;
A=1;B=0;C=0;#10;
A=1;B=0;C=1;#10;
A=1;B=1;C=0;#10;
A=1;B=1;C=1;#10;
end
endmodule