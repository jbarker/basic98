10 REM  Jay Barker
20 REM  Date: 10/24/97
30 REM  Purpose: To make a table of exercise pulse lows and highs.
40 REM  Program Name: Proj9b
50 REM  Variable Dictionary
60 REM  A = Age
70 REM  L = Low Pulse
80 REM  H = High Pulse
90 PRINT "Age", "Low Pulse", "High Pulse"
100 FOR A = 80 TO 10 STEP -5
110   L = (220 - A) * .7
120   H = (220 - A) * .85
130   PRINT A, L, H
140 NEXT A
150 END

