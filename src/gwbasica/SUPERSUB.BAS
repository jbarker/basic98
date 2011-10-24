10 REM  Jay Barker
20 REM  Date: 02/07/98
30 REM  Purpose: To be a subroutine supersleuth
40 REM  Program Name: supersub
50 REM  Variable Dictionary
60 REM  N() = Number array
70 REM  I = Counter 1
80 REM  J = Counter 2
90 REM  X = Number of data items
100 REM T = Temporary storage
110 REM F = Flag
120 REM N$= Number string
130 REM A$= Switch string 1
140 REM B$= Switch string 2
150 REM  ----------------------------------------------------------------------
160 CLS : X=19 : DIM N(X)
170 GOSUB 410  : REM Read numbers
180 GOSUB 460  : REM Print numbers
190 GOSUB 520  : REM Numerical order
200 GOSUB 460  : REM Print numbers
210 GOSUB 600  : REM Reverse 3-digit numbers
220 GOSUB 460  : REM Print numbers
230 GOSUB 520  : REM Numerical order
240 GOSUB 460  : REM Print numbers
250 GOSUB 770  : REM Add 150/100
260 GOSUB 460  : REM Print numbers
270 GOSUB 600  : REM Reverse 3-digit numbers
280 GOSUB 460  : REM Print numbers
290 GOSUB 520  : REM Numerical order
300 GOSUB 460  : REM Print numbers
310 GOSUB 840  : REM Subtract 113
320 GOSUB 460  : REM Print numbers
330 GOSUB 900  : REM Subtract 28
340 GOSUB 460  : REM Print numbers
350 GOSUB 980  : REM Add 65/6
360 GOSUB 460  : REM Print numbers
370 GOSUB 1040  : REM Convert and print
380 REM -----------------------------------------------------------------------
390 DATA 334,384,105,222,61,2,175,228,114,235,241,213,206,3,321,152,214,137,224
400 END
410 REM ----Read Numbers-------------------------------------------------------
420 FOR I=1 TO X
430   READ N(I)
440 NEXT I
450 RETURN
460 REM ----Print Numbers------------------------------------------------------
470 FOR I=1 TO X
480   PRINT N(I);
490 NEXT I
500 PRINT : PRINT
510 RETURN
520 REM ----Numerical Order----------------------------------------------------
530 FOR J=1 TO X-1
540   FOR I=1 TO X-J
550     IF N(I)>N(I+1) THEN T=N(I):N(I)=N(I+1):N(I+1)=T
560   NEXT I
570 NEXT J
580 PRINT "Numbers in numerical order"
590 RETURN
600 REM ----Reverse 3-digit numbers--------------------------------------------
610 FOR I=1 TO X
620 F=0
630   WHILE N(I)>=100 AND F=0
640     N$=STR$(N(I))
650     N$=MID$(N$,4,1)+MID$(N$,3,1)+MID$(N$,2,1)
660 REM N$=MID$(N$,2,3)
670 REM FOR J=2 TO 4
680 REM   A$=MID$(N$,J,1)
690 REM   B$=B$+A$
700 REM NEXT J
710     N(I)=VAL(N$)
720     F=1
730   WEND
740 NEXT I
750 PRINT "3-digit numbers reversed"
760 RETURN
770 REM ----Add 150/100--------------------------------------------------------
780 FOR I=1 TO X
790   IF N(I)>=450 THEN N(I)=N(I)+150
800   IF N(I)<450 THEN N(I)=N(I)+100
810 NEXT I
820 PRINT "Add 150 or 100"
830 RETURN
840 REM ----Subtract 113-------------------------------------------------------
850 FOR I=1 TO X
860   N(I)=N(I)-113
870 NEXT I
880 PRINT "Subtract 113"
890 RETURN
900 REM ----Subtract 28--------------------------------------------------------
910 FOR I=1 TO X
920   WHILE N(I)>=28
930     N(I)=N(I)-28
940   WEND
950 NEXT I
960 PRINT "Subtract 28"
970 RETURN
980 REM ----Add 65/6-----------------------------------------------------------
990 FOR I=1 TO X
1000   IF N(I)>25 THEN N(I)=N(I)+6 ELSE N(I)=N(I)+65
1010 NEXT I
1020 PRINT "Add 65 or 6"
1030 RETURN
1040 REM ----Convert and print--------------------------------------------------
1050 PRINT "The secret message is: ";
1060 FOR I=1 TO X
1070   PRINT CHR$(N(I));
1080 NEXT I
1090 RETURN
1100 REM -----------------------------------------------------------------------
