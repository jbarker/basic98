10 REM  Jay Barker
20 REM  Date: 04/22/98
30 REM  Purpose: To shell sort in ascending order
40 REM  Program Name: shell1
50 REM  Variable Dictionary
60 REM  N() = Number array
70 REM  I = Counter 1
80 REM  J = Counter 2
90 REM  Z = Number of data items
100 REM T = Temporary storage
110 REM F = Flag
120 REM N$= Number string
130 REM A$= Switch string 1
140 REM B$= Switch string 2
150 REM  ----------------------------------------------------------------------
160 CLS : Z=19 : DIM N(Z)
170 GOSUB 410  : REM Read numbers
180 GOSUB 460  : REM Print numbers
190 GOSUB 520  : REM Numerical order
200 GOSUB 460  : REM Print numbers
210 GOSUB 680  : REM Reverse 3-digit numbers
220 GOSUB 460  : REM Print numbers
230 GOSUB 520  : REM Numerical order
240 GOSUB 460  : REM Print numbers
250 GOSUB 800  : REM Add 150/100
260 GOSUB 460  : REM Print numbers
270 GOSUB 680  : REM Reverse 3-digit numbers
280 GOSUB 460  : REM Print numbers
290 GOSUB 520  : REM Numerical order
300 GOSUB 460  : REM Print numbers
310 GOSUB 870  : REM Subtract 113
320 GOSUB 460  : REM Print numbers
330 GOSUB 930  : REM Subtract 28
340 GOSUB 460  : REM Print numbers
350 GOSUB 1010  : REM Add 65/6
360 GOSUB 460  : REM Print numbers
370 GOSUB 1070  : REM Convert and print
380 REM -----------------------------------------------------------------------
390 DATA 334,384,105,222,61,2,175,228,114,235,241,213,206,3,321,152,214,137,224
400 END
410 REM ----Read Numbers-------------------------------------------------------
420 FOR I=1 TO Z
430   READ N(I)
440 NEXT I
450 RETURN
460 REM ----Print Numbers------------------------------------------------------
470 FOR I=1 TO Z
480   PRINT N(I);
490 NEXT I
500 PRINT : PRINT
510 RETURN
520 REM ----Numerical Order----------------------------------------------------
530 X=INT(Z/2)
540 WHILE X>=1
550   FOR K=1 TO X
560     FOR I=K TO (Z-X) STEP X
570       FLAG=0 : J=I : T=N(I+X)
580       WHILE J>=1 AND FLAG=0
590         IF T<N(J) THEN FLAG=1 ELSE N(J+X)=N(J) : J=J-X
600       WEND
610       N(J+X)=T
620     NEXT I
630   NEXT K
640   X=INT(X/2)
650 WEND
660 PRINT "Numbers in numerical order"
670 RETURN
680 REM ----Reverse 3-digit numbers--------------------------------------------
690 FOR I=1 TO Z
700 F=0
710   WHILE N(I)>=100 AND F=0
720     N$=STR$(N(I))
730     N$=MID$(N$,4,1)+MID$(N$,3,1)+MID$(N$,2,1)
740     N(I)=VAL(N$)
750     F=1
760   WEND
770 NEXT I
780 PRINT "3-digit numbers reversed"
790 RETURN
800 REM ----Add 150/100--------------------------------------------------------
810 FOR I=1 TO Z
820   IF N(I)>=450 THEN N(I)=N(I)+150
830   IF N(I)<450 THEN N(I)=N(I)+100
840 NEXT I
850 PRINT "Add 150 or 100"
860 RETURN
870 REM ----Subtract 113-------------------------------------------------------
880 FOR I=1 TO Z
890   N(I)=N(I)-113
900 NEXT I
910 PRINT "Subtract 113"
920 RETURN
930 REM ----Subtract 28--------------------------------------------------------
940 FOR I=1 TO Z
950   WHILE N(I)>=28
960     N(I)=N(I)-28
970   WEND
980 NEXT I
990 PRINT "Subtract 28"
1000 RETURN
1010 REM ----Add 65/6-----------------------------------------------------------
1020 FOR I=1 TO Z
1030   IF N(I)>25 THEN N(I)=N(I)+6 ELSE N(I)=N(I)+65
1040 NEXT I
1050 PRINT "Add 65 or 6"
1060 RETURN
1070 REM ----Convert and print--------------------------------------------------
1080 PRINT "The secret message is: ";
1090 FOR I=1 TO Z
1100   PRINT CHR$(N(I));
1110 NEXT I
1120 RETURN
1130 REM -----------------------------------------------------------------------
