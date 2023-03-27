.global main

//using  stack to save memory spaces. Preteend we can only use r0 and
//   r1 register , so we can use a function like this. 

main: 
    MOV R0,#1 //get value of r1
	MOV R1,#2 //get value of r2
	PUSH {R0,R1} // push both the values of r1 and r2 to a stack
	BL add // go to the add function with saving the next address line in the lr
	
	POP {R0,R1}//pop the values from the stack and store it in r0 and r1
	b exit // exit the program . 
	
	
add: // the add function that will excecute after line 10
  MOV R0,#2 //override the value of r0 to 2
  MOV R1,#3 //override the value of r1 to 3
  ADD R2,R0,R1 //add both r0 and r1 and store it in r2
  bx lr // return to the address line stored in lr (line no.11)
   
exit: // exit function that does nothing.


.data 
	
	
