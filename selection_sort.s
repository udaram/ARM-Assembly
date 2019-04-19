ldr r0,=aa @address of first element of array
ldr r1,=N  @address of size of array
ldr r9,[r1] @ size of array
sub r10,r9,#1
mov r11,#4

mov r2,#0

outerloop:
     mov r3,r2 @r3 minimum index
     add r4,r2,#1 @j equalvalent to r4 j=i+1
     
     innerloop:
        mul r5,r3,r11 @offset of minimum
        mul r6,r4,r11 @offset of j th element
        ldr r7,[r0,r6] @j th element 
        ldr r8,[r0,r5] @minimum element
        cmp r8,r7
        blt comp
        mov r3,r4
     comp:
        add r4,r4,#1
        cmp r4,r9
        bne innerloop
        @swapping 
        @not applicable here sub r4,r4,#1
        mul r5,r3,r11 
        mul r6,r2,r11
        ldr r7,[r0,r6] 
        ldr r8,[r0,r5]
        str r7,[r0,r5]
        str r8,[r0,r6] 
        
        add r2,r2,#1  @i=i+1
        cmp r2,r10
        bne outerloop
        beq exit
 
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
        
        
