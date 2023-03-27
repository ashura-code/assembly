.global main 
//functions in assembly

//BL (Branch Links) : 
//		This BL instruction stores the address of the next line to a
//  register (lr (link register)),  and after it does its function 
//  that is provided to it , we  will use a instruction 'bx lr' that 
//  will go back to the address stored in
//  the link register.



// simple function to add two numbers

main:
   MOV R0,#1
   MOV R1,#2
   BL addd // this will add the next line's address to lr
   MOV R3,#4
   
   exit: 
     BAL exit
   
addd:
  ADD R0,R0,R1
  bx lr // this will return  to lr's saved address
 






.data
