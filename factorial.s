mov r1,#10
mov r2,#1     


repeat:
mul r2,r1,r2
sub r1,r1,#1
cmp r1,#0
bne repeat 

SWI       0x6b       @ Print integer in register r1 to stdout
SWI       0x11       @ Stop program execution
