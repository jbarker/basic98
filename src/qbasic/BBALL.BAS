10 REM  Jay Barker
20 REM  Date: 03/25/98
30 REM  Purpose: To tabulate baseball statistics
40 REM  Program Name: bball
50 REM  Variable Dictionary
60 REM     R = Number of rows / players
70 REM     C = Number of columns / statistics
80 REM   I,J = Loop counters
90 REM  R$() = Row headings
100 REM V(,) = Stats array
110 REM   T$ = Team string
120 REM      =
130 REM -----Main Program----------------------------------------------------
140 READ R, C
150 READ T$
160 DIM V(R + 1, C + 1): DIM R$(R + 1)
170 GOSUB 210: REM Read & Total
180 GOSUB 330: REM Output
190 END
200 REM -----Read & Total----------------------------------------------------
210 FOR I = 1 TO R
220    READ R$(I)
230    FOR J = 1 TO C
240       READ V(I, J)
250       V(I, C + 1) = V(I, 3) / V(I, 1)
260       V(R + 1, J) = V(R + 1, J) + V(I, J)
270       V(R + 1, C + 1) = V(R + 1, 3) / V(R + 1, 1)
280    NEXT J
290 NEXT I
300 READ R$(R + 1)
310 RETURN
320 REM -----Output----------------------------------------------------------
330 PRINT : COLOR 14
340 PRINT TAB(29); T$
350 PRINT : COLOR 15
360 PRINT TAB(18); "At Bats";
370 PRINT TAB(28); "Runs";
380 PRINT TAB(37); "Hits";
390 PRINT TAB(47); "Hrs";
400 PRINT TAB(56); "RBI";
410 PRINT TAB(63); "Ave."
420 COLOR 7
430 FOR I = 1 TO R + 1
440    PRINT R$(I);
450    FOR J = 1 TO C
460       PRINT TAB(J * 9 + 9); USING "####"; V(I, J);
470    NEXT J
480    PRINT TAB((C + 1) * 9 + 9); USING ".###"; V(I, J);
490    PRINT
500 NEXT I
510 RETURN
520 REM -----Data------------------------------------------------------------
530 REM -----Set 1-----
540     DATA 13,5,Seattle Mariners
550     DATA T Martinez,22,4,9,1,5
560     DATA Cora,19,7,6,1,1
570     DATA Sojo,20,0,5,0,3
580     DATA Blowers,18,0,3,0,1
590     DATA Coleman,23,6,5,1,1
600     DATA Griffey,23,9,9,5,7
610     DATA Buhner,24,2,11,1,3
620     DATA Wilson,17,0,2,0,1
630     DATA E Martinez,21,6,12,2,10
640     DATA Diaz,3,0,1,0,0
650     DATA Strange,4,0,0,0,1
660     DATA Fermin,1,0,0,0,0
670     DATA Widger,3,0,0,0,0
680 REM -----Set 2-----
690 REM DATA 10,5,New York Yankees
700 REM DATA Mattingly,24,3,10,1,6
710 REM DATA Velarde,17,3,3,0,1
720 REM DATA Fernandez,21,0,5,0,0
730 REM DATA Boggs,19,4,5,1,3
740 REM DATA James,12,0,1,0,0
750 REM DATA B Williams,21,8,9,2,5
760 REM DATA O'Neill,18,5,6,3,6
770 REM DATA Stanley,16,2,5,1,3
780 REM DATA Sierra,23,2,4,2,5
790 REM DATA Leyritz,7,1,1,1,2
800 REM ------All------
810     DATA TEAM TOTAL
820 REM -----End-------------------------------------------------------------

