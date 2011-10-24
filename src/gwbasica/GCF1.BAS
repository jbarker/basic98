10  REM Jay Barker
20  REM Date: 11/24/97
30  REM Purpose: To find the greatest common factor
40  REM          for any two counting numbers.
50  REM Program Name: GCF1
60  REM Variable Dictionary
70  REM N1=Counting number
80  REM N2=Counting number
90  REM T1=Temporary number 1
100 REM T2=Temporary number 2
110 REM  F=Greatest Common Factor
120 REM  X=Divisor
130 REM  S=Switch
140 PRINT"Enter the first counting number.":INPUT N1
150 WHILE N1<>INT(N1) OR N1<1
160 PRINT"Enter the first COUNTING number!":INPUT N1:WEND
170 PRINT"Enter the second counting number.":INPUT N2
180 WHILE N2<>INT(N2) OR N2<1
190 PRINT"Enter the second COUNTING number!":INPUT N2:WEND
200 REM ----------
210 IF N1>N2 THEN S=N1 : N1=N2 : N2=S
220 FOR X=1 TO N1
230    T1=0 : T2=1
240    IF N1/X=INT(N1/X) THEN T1=X
250    IF N2/X=INT(N2/X) THEN T2=X
260    IF T1=T2 THEN F=T1
270 NEXT X
280 PRINT "The greatest common factor of";
290 PRINT N1"and";N2;"is";F;"."
300 END
