//Dodavanje RAM[0]
@R0
D = M
@M1
D; JLT
M = D
@R5 
M = D + M 
(M1)

//Dodavanje RAM[1]
@R1 
D = M 
@M2
D; JLT 
@R5 
M = D + M
(M2)

//Dodavanje RAM[2]
@R2 
D = M 
@M3 
D; JLT 
@R5
M = D + M 
(M3)

//Dodavanje RAM[3]
@R3 
D = M 
@M4 
D; JLT 
@R5 
M = D + M 
(M4)

//Dodavanje RAM[4]
@R4 
D = M 
@END 
D; JLT
@R5 
M = D + M

//Kraj
(END)
@END
0;JMP