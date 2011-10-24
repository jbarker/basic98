10 REM  Jay Barker
20 REM  Date: 10/24/97
30 REM  Purpose: To make a power and root table
40 REM  Program Name: Proj9a
50 REM  Variable Dictionary
60 REM  F = First table value
70 REM  L = Last table value
80 REM  I = Table increment
90 REM  N = Number
100 REM S = Square
110 REM SR= Square root
120 REM C = Cube
130 REM CR= Cube root
140 REM
150 PRINT "Input the first table value."
160 INPUT F
170 PRINT "Input the last table value."
180 INPUT L
190 PRINT "Input the table increment."
200 INPUT I
210 PRINT "Number", "Square", "Square root", "Cube", "Cube root"
220 FOR N = F TO L STEP I
230   S = N * N
240   SR = N ^ .5
250   C = S * N
260   CR = N ^ (1 / 3)
270   PRINT N, S, SR, C, CR
280 NEXT N
290 END

