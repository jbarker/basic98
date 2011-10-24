10 REM  Jay Barker
20 REM  Date: 11/18/97
30 REM  Purpose: To play the daily lotto game.
40 REM  Program Name: LOTTO1
50 REM  Variable Dictionary
60 REM  D = Value of the die
70 REM  R = Number of rolls
80 REM  N = Counter
90 PRINT "Today's daily lotto numbers are..."
100 RANDOMIZE TIMER
110 FOR N = 1 TO 3
120 D = INT(RND(2) * 10)
130 PRINT D;
140 NEXT N
150 PRINT
160 PRINT "Numbers drawn are not official until validated."
170 END

