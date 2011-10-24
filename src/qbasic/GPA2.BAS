10 REM  Jay Barker
20 REM  Date: 11/17/97
30 REM  Purpose: To calculate GPA (to the tenths place).
40 REM  Program Name: GPA2
50 REM  Variable Dictionary
60 REM  C=Class #
70 REM  G=Grade
80 REM  T=Grade total
90 REM  A=Grade average (GPA)
100 C = 0: T = 0
110 PRINT "This program will calculate GPA (to the tenths place)."
120 PRINT "Please enter the numerical values of your grades."
130 PRINT "(When you have finished, input 5 as your final grade.)"
140 PRINT "Input your first grade and press ENTER."
150 INPUT G
160 WHILE G <> 5
170   C = C + 1: T = T + G
180   PRINT "Input your next grade."
190   INPUT G
200 WEND
210 A = T / C
220 A = INT(A * 10 + .5) / 10
230 PRINT "You have"; C; "courses and a GPA of"; A; "."
240 IF A >= 3.2 THEN PRINT "Honor Roll"
250 END

