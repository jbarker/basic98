10 REM  Jay Barker
20 REM  Date: 06/02/98
30 REM  Purpose: To move an arrow
40 REM  Program Name: arrow
50 REM  Variable Dictionary
60 REM  Y = Vertical Position
70 REM  X = Horizontal Position
80 REM  ----------------------------------------------------------------------
90 KEY OFF: CLS
100 SCREEN 1, 0
110 Y = 100
120 COLOR 0, 1
130 FOR X = 4 TO 319 STEP 5
140   C = 3: GOSUB 190: REM Make Arrow
150   C = 0: GOSUB 190: REM Erase Arrow
160 NEXT X
170 END
180 REM -----Make Arrow / Erase Arrow-----------------------------------------
190 LINE (X, Y)-(X + 20, Y), C
200 LINE (X + 20, Y)-(X + 20, Y - 4), C
210 LINE (X + 20, Y - 4)-(X + 28, Y + 4), C
220 LINE (X + 28, Y + 4)-(X + 20, Y + 12), C
230 LINE (X + 20, Y + 12)-(X + 20, Y + 8), C
240 LINE (X, Y + 8)-(X + 20, Y + 8), C
250 LINE (X, Y + 8)-(X, Y), C
260 RETURN
270 REM ----------------------------------------------------------------------

