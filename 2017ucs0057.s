ldr r0,=aa
mov r1,#1000
ldr r2,=start
str r1,[r2]

@creating the list 
mov r3,#8
mov r5,#0

createList:
     ldr r4,[r0,r5]
     add r5,r5,#4    @updating r5 to get next array element
     str r4,[r1]     @storing data to node
     add r6,r1,#1000
     str r6,[r1,#4]  @storing address to node
     mov r1,r6       @updating r1 by 1000 each time 
     sub r3,r3,#1
     cmp r3,#1
     beq lastnode
     bne createList
     
lastnode:
     ldr r4,[r0,r5]
     str r4,[r1]
     mov r6,#0
     str r6,[r1,#4]
 
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
     
@computing Largest element in the list
ldr r1,[r2]  @accessing the start of list
mov r3,#0
findL:     
     ldr r4,[r1] 
     ldr r1,[r1,#4]
     cmp r3,r4
     blt changeL
     cmp r1,#0
     bne findL
     beq Endloop
     
changeL:
     mov r3,r4
     cmp r1,#0
     bne findL

Endloop: 
mov r0,r3  @moving largest element in r0 register


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@2

@Sorting of the Linklist using bubble sort technique
ldr r1,[r2] @address of first element of array
mov r3,#8

OuterLoop:
     sub r3,r3,#1
     cmp r3,#0
     beq exit
     ldr r1,[r2]
     innerloop:
         ldr r4,[r1]
         ldr r5,[r1,#4] @address of next node
         cmp r5,#0
         beq OuterLoop
         ldr r6,[r5] 
         mov r7,r1
         mov r1,r5
         cmp r4,r6
         blt swap
         bge innerloop
         
         swap:
            str r6,[r7]
            str r4,[r5]
            cmp r5,#0
            bne innerloop
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@     

exit:

@loading the sorted list into registers
ldr r0,[r2]
ldr r2,[r0]
ldr r0,[r0,#4]
ldr r3,[r0]
ldr r0,[r0,#4]
ldr r4,[r0]
ldr r0,[r0,#4]
ldr r5,[r0]
ldr r0,[r0,#4]
ldr r6,[r0]
ldr r0,[r0,#4]
ldr r7,[r0]
ldr r0,[r0,#4]
ldr r8,[r0]
ldr r0,[r0,#4]
ldr r9,[r0]






      .data
start: .word 1000
aa: .word 9,3,6,10,7,5,2,3

