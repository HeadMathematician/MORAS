(Diagonal_Init)

@4096
D=A
@i
M=D

@16
D=A
@j
M=D

@8
D=A
@R0
M=D

(Diagonal)
@i
D=M
@2048
D=A+D     //gornji offset
@10
D=A+D     // lijevi offset
@R0
D=M+D

@SCREEN
A=A+D
M=1

D=A   // prep for bit shift
@R2
M=D
@j
D=M
@R1
M=D
@MultSelf //bit shift
0;JMP

(Back1)

@j
M=M-1
D=M
@JZero
D;JEQ

(Back2)

@32
D=A
@i
M=M-D
D=M

@VerticalInit
D;JEQ

@Diagonal
0;JMP

(JZero)
@16
D=A
@j
M=D
@R0
M=M-1
@Back2
0;JMP

(MultSelf)  // @R1 koristim kao iterator, a @R5 za adresu
@R1
M=M-1
D=M
@Back1
D;JEQ
@R2
A=M
D=M
M=D+M
@MultSelf
0;JMP

(Diagonal_Right)

(VerticalInit)
@4096
D=A
@i
M=D

(Vertical)
@i
D=M
@2048
D=A+D     //gornji offset
@11
D=A+D     // lijevi offset

@SCREEN
A=A+D
M=M+1

@32
D=A
@i
M=M-D
D=M
@Vertical
D;JGT

@2091
D=A
@SCREEN
A=A+D
M=M-1

@8
D=A
@i
M=D

@4096
D=A
@i
M=D

(Vertical_Right)
@i
D=M
@2048
D=A+D     //gornji offset
@19
D=A+D     // lijevi offset

@SCREEN
A=A+D
M=M+1

@32
D=A
@i
M=M-D
D=M
@Vertical_Right
D;JGT

@2091
D=A
@SCREEN
A=A+D
M=M-1

@8
D=A
@i
M=D

(Horizontal_bottom)
@i
D=M
@6144
D=A+D     //gornji offset
@10
D=A+D     // lijevi offset
@SCREEN
A=A+D
M=0
M=!M
@i
M=M-1
D=M
@Horizontal_bottom
D;JGT

@8
D=A
@i
M=D

(Horizontal_Top)
@i
D=M
@2048
D=A+D     //gornji offset
@10
D=A+D     // lijevi offset
@SCREEN
A=A+D
M=0
M=!M
@i
M=M-1
D=M
@Horizontal_Top
D;JGT

(EndLoop)
@EndLoop
0;JMP