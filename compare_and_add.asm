.global main

//PROGRAM TO DO SOMETHING AFTER COMPARISON , (SMALLER VERSION)
main:
 MOV R0,#1 //TAKE VALUE 1 TO COMPARE
 MOV R1,#2 //TAKE VALUE 2 TO COMPARE
 CMP R0,R1 //COMPARE VAL 1 AND VAL 2
 
 ADDLT R0,R0,R1 //IF VAL 1 IS LESS THAN VAL 2 , THEN DO SOMETHING(
 
 // HERE , WE ADD BOTH THE VALUES TO VALUE 1)


.data