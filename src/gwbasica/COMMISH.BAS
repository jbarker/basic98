10 REM  Jay Barker
20 REM  Date: 09/29/97
30 REM  Purpose: To calculate commission from sales
40 REM  Program Name: Commish
50 REM  Variable Dictionary
60 REM  S=Sales
70 REM  C=Total Commision
80 REM
90 PRINT "This program will calculate commission from sales."
100 PRINT "Please enter the amount of sales without the dollar sign ($)."
110 INPUT S
120 IF S<=6000 THEN C=S*.04 ELSE C=240+(S-6000)*.07
130 PRINT "Your commission on sales of $";S;"would be $";C;"."
140 END
