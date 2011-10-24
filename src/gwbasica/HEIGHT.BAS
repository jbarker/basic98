10 REM  Jay Barker
20 REM  Date: 09/17/97
30 REM  Purpose: To find one's height when their height at age 3 is known
40 REM  Program Name: Height
50 REM  Variable Dictionary
60 REM  H=Height at age 3
70 REM  A=Height as an adult
80 PRINT "This program will estimate one's height when"
90 PRINT "one's height at age 3 is known."
100 PRINT "Type your height at age 3, then press ENTER."
110 INPUT H
120 PRINT "You entered";H;"inches as your height at age 3."
130 A=21+1.27*H
140 PRINT "Your esimated height as an adult is";A;"inches."
150 END
