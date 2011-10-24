10 REM  Jay Barker
20 REM  Date: 05/13/98
30 REM  Purpose: To keep track of accounts using files
40 REM  Program Name: files1
50 REM  Variable Dictionary
60 REM   B() = Balance (amount owed) array
70 REM   C() = Charges array
80 REM    F$ = Filename
90 REM     I = Index
100 REM   MC = Menu choice
110 REM    N = Number of customers
120 REM N$() = Customers' names array
130 REM  P() = Payment array
140 REM   M$ = Month of billing
150 REM -----Main--------------------------------------------------------------
160 KEY OFF : WIDTH 80 : DIM N$(30) : DIM B(30) : DIM C(30) : DIM P(30)
170 WHILE MC<>-1
180 CLS
190   GOSUB 300 : REM Menu
200   INPUT MC
210   ON MC GOSUB 420,520,630,740,840,1010
220     REM 440  Make New List
230     REM 530  Load File
240     REM 640  Save File
250     REM 750  Update Data
260     REM 830  Print Bills
270     REM 1010 End
280 WEND
290 REM -----Menu--------------------------------------------------------------
300 PRINT TAB(25) "Financial Accounts of Sports Supply, Inc."
310 PRINT
320 PRINT TAB(25) "1. Make a new list"
330 PRINT TAB(25) "2. Load a file"
340 PRINT TAB(25) "3. Save a file"
350 PRINT TAB(25) "4. Update data"
360 PRINT TAB(25) "5. Print bills"
370 PRINT TAB(25) "6. End"
380 PRINT
390 PRINT TAB(25) "Choose a selection"
400 RETURN
410 REM -----Make New List-----------------------------------------------------
420 PRINT "How many new customers do you want to list?"
430 INPUT N
440 FOR I=1 TO N
450   PRINT
460   PRINT "Enter customer name."
470   INPUT N$(I)
480   B(I)=0
490 NEXT I
500 RETURN
510 REM -----Load File---------------------------------------------------------
520 PRINT "Enter file name (up to 8 characters)."
530 INPUT F$
540 F$="A:\"+F$+".dat"
550 OPEN "I",1,F$
560 INPUT#1,N
570 FOR I=1 TO N
580   INPUT#1,N$(I),B(I)
590 NEXT I
600 CLOSE 1
610 RETURN
620 REM -----Save File---------------------------------------------------------
630 PRINT "Enter file name (up to 8 characters)."
640 INPUT F$
650 F$="A:\"+F$+".dat"
660 OPEN "O",1,F$
670 WRITE#1,N
680 FOR I=1 TO N
690   WRITE#1,N$(I),B(I)
700 NEXT I
710 CLOSE 1
720 RETURN
730 REM -----Update Data-------------------------------------------------------
740 FOR I=1 TO N
750   PRINT "--Information for ";N$(I);"--"
760   PRINT "New charges for ";N$(I);":":INPUT C(I)
770   PRINT "New payment for ";N$(I);":":INPUT P(I)
780   B(I)=B(I)+C(I)-P(I)
790   B(I)=INT(B(I)*100+.5)/100
800 NEXT I
810 RETURN
820 REM -----Print Bills-------------------------------------------------------
830 PRINT
840 PRINT "Enter billing month."
850 INPUT M$
860 FOR I=1 TO N
870   PRINT
880   PRINT "Sports Supply, Inc. bill for ";M$;"."
890   PRINT
900   PRINT "Account: ";N$(I)
910   PRINT "Balance:";USING "$$####.##";B(I)
920   PRINT
930   PRINT "Balance due within 30 days of billing month."
940   PRINT "__________________________________________________"
950 NEXT I
960 PRINT
970 PRINT "Press ENTER to continue"
980 INPUT I$
990 RETURN
1000 REM -----End---------------------------------------------------------------
1010 PRINT
1020 PRINT "Are you sure you want to end? (Y/N)"
1030 INPUT I$
1040 IF I$="Y" THEN END
1050 IF I$<>"Y" THEN RETURN
1060 REM -----------------------------------------------------------------------
