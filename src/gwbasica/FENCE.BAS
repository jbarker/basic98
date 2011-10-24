10 REM  Jay Barker
20 REM  Date: 06/02/98
30 REM  Purpose: To make a picket fence
40 REM  Program Name: fence
50 REM  Variable Dictionary
60 REM  Y = Vertical Position
70 REM  X = Horizontal Position
80 REM  ----------------------------------------------------------------------
90 KEY OFF : CLS
100 SCREEN 1
110 Y=100
120 FOR X=4 TO 319 STEP 15
130   GOSUB 180 : REM Make Picket
140   GOSUB 250 : REM Make Rail
150 NEXT X
160 END
170 REM -----Make Picket------------------------------------------------------
180 LINE (X,Y)-(X+4,Y+16)
190 LINE (X+4,Y+64)-(X+4,Y+16)
200 LINE (X+4,Y+64)-(X-4,Y+64)
210 LINE (X-4,Y+64)-(X-4,Y+16)
220 LINE (X,Y)-(X-4,Y+16)
230 RETURN
240 REM -----Make Rail--------------------------------------------------------
250 LINE (X+4,Y+24)-(X+10,Y+24)
260 LINE (X+4,Y+28)-(X+10,Y+28)
270 LINE (X+4,Y+50)-(X+10,Y+50)
280 LINE (X+4,Y+54)-(X+10,Y+54)
290 RETURN
300 REM ----------------------------------------------------------------------
