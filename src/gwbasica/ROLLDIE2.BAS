10 REM  Jay Barker
20 REM  Date: 11/20/97
30 REM  Purpose: To simulate the rolling of a single die.
40 REM  Program Name: ROLLDIE2
50 REM  Variable Dictionary
60 REM  D = Value of the die
70 REM  R = Number of rolls
80 REM  N = Counter
90 PRINT "How many times do you want to roll the die?"
100 INPUT R
110 FOR N=1 TO R
120 RANDOMIZE TIMER
130 D=INT(RND(2)*6)+1
140 PRINT D;
150 IF N/10=INT(N/10) THEN PRINT
160 NEXT N
170 END
