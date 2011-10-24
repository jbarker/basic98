10 REM  Jay Barker
20 REM  Date: 10/21/97
30 REM  Purpose: To make tables to display sales and commission
40 REM  Program Name: ForNext4
50 REM  Variable Dictionary
60 REM  S=Sales
70 REM  C=Commission
80 REM
90 PRINT "Sales($)", "Commission($)"
100 FOR S = 100 TO 2000 STEP 100
110   C = S * .075
120   PRINT S, C
130 NEXT S
140 END

