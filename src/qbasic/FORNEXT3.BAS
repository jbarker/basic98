10 REM  Jay Barker
20 REM  Date: 10/21/97
30 REM  Purpose: To make tables to display list price and discount price
40 REM  Program Name: ForNext3
50 REM  Variable Dictionary
60 REM  L=List price
70 REM  D=Discount price
80 REM
90 PRINT "List Price", "Discount Price"
100 FOR L = 25 TO 350 STEP 25
110   D = L * .85
120   PRINT L, D
130 NEXT L
140 END

