ldr r0,=aa @address of first element of array
ldr r1,=N  @address of size of array
ldr r7,[r1] @ size of array
mov r8,#4
sub r9,r7,#1

mov r2,#0  @i=0 for outer loop

outerloop:
    mov r3,#0   @j=0 for innner loop
    add r2,r2,#1
    cmp r2,r7
    beq exit
    innerloop:
        mul r4,r3,r8 
        ldr r5,[r0,r4]
        add r4,r4,#4
        ldr r6,[r0,r4]
        cmp r5,r6
        ble comp 
        @for swap 
        str r5,[r0,r4]
        sub r4,r4,#4
        str r6,[r0,r4]
      comp:
        add r3,r3,#1 @update j=j+1
        cmp r3,r9
        bne innerloop
        beq outerloop
           
exit:
ldr r2,[r0]
ldr r3,[r0,#4]
ldr r4,[r0,#8]
ldr r5,[r0,#12]
ldr r6,[r0,#16]
ldr r7,[r0,#20]
ldr r8,[r0,#24]
ldr r9,[r0,#28]
ldr r10,[r0,#32]
ldr r11,[r0,#36]
ldr r12,[r0,#40]

        

        .data
N:  .word 11
aa: .word 2,45,12,54,8,2,1,4,19,25,0
        .end
        
