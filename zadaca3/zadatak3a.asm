@0
D = M

@resetb
M = D

@temp
M = D

@result
M = 0

@1
D = M

@resete
M = D

@1
M = M - 1 

$WHILE(1)

$WHILE(0)

$SUM(temp, result, result)

@0
M = M - 1

$END

@result
D = M
M = 0

@temp
M = D

@resetb
D = M
@0
M = D

@1
M = M - 1

$END

@resete
D = M
@1
M = D

@temp
D = M

@2
M = D

(END)
@END
0;JMP
