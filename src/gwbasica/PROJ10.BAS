10 REM  Jay Barker
20 REM  Date: 10/24/97
30 REM  Purpose: To move a letter across the screen
40 REM  Program Name: proj10
50 REM  Variable Dictionary
60 REM  H = Loop counter / Horizontal position
70 REM  D = Delay loop counter
80 CLS
90 FOR R=1 TO 10
100 FOR V=1 TO 23 STEP 1
110   LOCATE V,1 : PRINT "J"
120   FOR D=1 TO 99 : NEXT D
130   LOCATE V,1 : PRINT " "
140 NEXT V
150 FOR V=1 TO 79 STEP 1
160   LOCATE 23,V: PRINT "J"
170   FOR D=1 TO 99 : NEXT D
180   LOCATE 23,V: PRINT " "
190 NEXT V
200 FOR V=23 TO 1 STEP -1
210   LOCATE V,79: PRINT "J"
220   FOR D=1 TO 99 : NEXT D
230   LOCATE V,79: PRINT " "
240 NEXT V
250 FOR V=79 TO 1 STEP -1
260   LOCATE 1,V: PRINT "J"
270   FOR D=1 TO 99 : NEXT D
280   LOCATE 1,V: PRINT " "
290 NEXT V
300 NEXT R
310 END
