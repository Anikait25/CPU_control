/*Inputs:-
A => Read operation
B => write operation
C => interrupt
Output
Y=> 1, if A=1 or B=1 and C=1
    0, otherwise*/

module cpu_control (o_led,Y,A,B,C);
input A,B,C;
output Y;
output reg [0:6]o_led;


assign Y = A | (B & C);
always@(Y)
begin
case(Y)

0:o_led=7'b0000001;
1:o_led=7'b1001111;
endcase
end
endmodule