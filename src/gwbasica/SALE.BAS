10 REM  Jay Barker
20 REM  Date: 09/29/97
30 REM  Purpose: To calculate the percentage of discount on a purchase.
40 REM  Program Name: Sale
50 REM  Variable Dictionary
60 REM  A$=ASB CARD Y/N
70 REM  A=ASB muliplier
80 REM  T=Tax
90 REM  P=Original price of goods
100 REM  D=Discount
110 REM  PER=Percent
120 REM  F=Final price
130 REM
140 PRINT "This program will calculate the discount on"
150 PRINT "a purchase and the final purchase price."
160 PRINT "Enter the amount of the purchase without"
170 PRINT "the dollar sign ($)."
180 INPUT P
190 PRINT "Do you have an ASB card? (Enter Y or N.)"
200 INPUT A$
210 IF A$="Y" THEN A=.9 ELSE A=1
220 IF P>35 AND P<75 THEN D=.1
230 IF P>=75 AND P<150 THEN D=.15
240 IF P>=150 THEN D=.2
250 F=((P-P*D)*A)*1.08
260 T=((P-P*D)*A)*.08
270 PER=D*100
280 PRINT "For a purchase in the amount of $";P
290 PRINT "The tax would be $";T;"."
300 PRINT "The final price would be $";F
310 END
