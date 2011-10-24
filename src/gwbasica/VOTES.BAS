10 REM  Jay Barker
20 REM  Date: 03/12/98
30 REM  Purpose: To tabulate vote totals
40 REM  Program Name: vote
50 REM  Variable Dictionary
60 REM     R = Number of rows / candidates
70 REM     C = Number of columns / voting groups
80 REM   I,J = Loop counters
90 REM  R$() = Row headings
100 REM V(,) = Vote array
110 REM   W$ = Winner
120 REM   WV = Winner's vote total
130 REM -----Main Program----------------------------------------------------
140 READ R,C
150 DIM V(R+1,C+1)
160 GOSUB 200 : REM Read & Total
170 GOSUB 310 : REM Output
180 END
190 REM -----Read & Total----------------------------------------------------
200 FOR I=1 TO R
210    READ R$(I)
220    FOR J=1 TO C
230       READ V(I,J)
240       V(I,C+1)=V(I,C+1)+V(I,J)
250       V(R+1,J)=V(R+1,J)+V(I,J)
260       V(R+1,C+1)=V(R+1,C+1)+V(I,J)
270    NEXT J
280 NEXT I
290 RETURN
300 REM -----Output----------------------------------------------------------
310 PRINT : COLOR 14
320 PRINT TAB(20) "Stadium High School"
330 PRINT TAB(19) "Presidential Election"
340 PRINT : COLOR 15
350 PRINT TAB(19) "Fr.";
360 PRINT TAB(28) "So.";
370 PRINT TAB(37) "Jr.";
380 PRINT TAB(46) "Sr.";
390 PRINT TAB(54) "Total"
400 FOR I=1 TO R+1
410    PRINT R$(I);
420    FOR J=1 TO C+1
430       PRINT TAB(J*9+9) USING "####"; V(I,J);
440    NEXT J
450    PRINT
460 NEXT I
470 FOR I=1 TO R
480    IF V(I,C+1)>WV THEN W$=R$(I) : WV=V(I,C+1)
490 NEXT I
500 PRINT
510 PRINT "The winner is ";W$;" with";WV;"votes."
520 PRINT:PRINT:PRINT
530 RETURN
540 REM -----Data------------------------------------------------------------
550 REM -----Set 1-----
560     DATA 3,4
570     DATA Paula Tishun,224,326,201,189
580     DATA Phil Abuster,101,48,162,93
590     DATA Anite Yurvote,258,215,56,106
600 REM -----Set 2-----
610 REM DATA 5,4
620 REM DATA Joe Mahma,81,57,115,189
630 REM DATA Slick Willy,115,223,61,119
640 REM DATA A. Republicrat,83,93,213,52
650 REM DATA D. Winner,121,127,113,173
660 REM DATA D.A. Loser,150,131,26,51
670 REM -----End-------------------------------------------------------------
