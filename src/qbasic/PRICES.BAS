10 REM  Jay Barker
20 REM  Date: 10/09/97
30 REM  Purpose: To calculate the cost of a purchase plus sales tax.
40 REM  Program Name: Prices
50 REM  Variable Dictionary
60 REM  S=Sales tax
70 REM  C=Item cost
80 REM  T=Total cost
90 T = 0
100 PRINT "This program will calculate the cost"
110 PRINT "of your items plus sales tax."
120 PRINT "When you are through, input -1 as your"
130 PRINT "last amount."
140 PRINT "Input the amount of your first item"
150 PRINT "without the dollar sign ($)."
160 INPUT C
170 WHILE C <> -1
180   T = T + C
190   PRINT "Input the amount of your next item."
200   INPUT C
210 WEND
220 S = T * .084
230 PRINT "Your subtotal is $"; T; "and your sales"
240 PRINT "tax is $"; S; "."
250 T = T * 1.084
260 PRINT "Your grand total is $"; T; "."
270 END

