10 REM  Jay Barker
20 REM  Date: 11/07/97
30 REM  Purpose: To compute the distance between two points.
40 REM  Program Name: sqr1
50 REM  Variable Dictionary
60 REM  X1 = X Value #1
70 REM  Y1 = Y Value #1
80 REM  X2 = X Value #2
90 REM  Y2 = Y Value #2
100 REM D = Distance
110 REM V = Function value
120 REM
130 PRINT
140 PRINT "This program will compute the"
150 PRINT "distance between two points."
160 PRINT
170 PRINT "Enter the first point in the form x,y."
180 INPUT X1,Y1
190 PRINT "Enter the second point in the form x,y."
200 INPUT X2,Y2
210 PRINT
220 V=(X1-X2)^2+(Y1-Y2)^2
230 D=SQR(V)
240 PRINT "The distance between (";X1;",";Y1;")"
250 PRINT "and (";X2;",";Y2;") is";D;"units."
260 PRINT
270 END
