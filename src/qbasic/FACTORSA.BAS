10 REM  Jay Barker
20 REM  Date: 11/24/97
30 REM  Purpose: To find all factors of a counting number.
40 REM  Program Name: FACTORS1
50 REM  Variable Dictionary
60 REM  N = Counting Number
70 REM  D = Divisor
80 REM  F = Factor
90 REM
100 PRINT "Enter a counting number."
110 INPUT N
120 WHILE N <> INT(N) OR N < 1
130    PRINT "Enter a COUNTING number!"
140    INPUT N
150 WEND
160 REM ----------
170 PRINT "The factors of"; N; "are"
180 PRINT " 1"
190 FOR D = 2 TO N - 1 STEP 1
200    IF N / D = INT(N / D) THEN PRINT D
210 NEXT D
220 REM ----------
230 PRINT N
240 PRINT "End of factors list"
250 END

