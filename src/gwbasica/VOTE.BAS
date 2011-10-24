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
110 REM -----Main Program----------------------------------------------------
120 READ R,C
130 DIM V(R+1,C+1)
140 GOSUB 180 : REM Read & Total
150 GOSUB 270 : REM Output
160 END
170 REM -----Read & Total----------------------------------------------------
180 FOR I=1 TO R
190    READ R$(I)
200    FOR J=1 TO C
210       READ V(I,J)
220       V(I,C+1)=V(I,C+1)+V(I,J)
230    NEXT J
240 NEXT I
250 RETURN
260 REM -----Output----------------------------------------------------------
270 PRINT
280 PRINT TAB(5) "Stadium High School"
290 PRINT TAB(5) "Presidential Election"
300 PRINT
310 PRINT TAB(10) "Fr.";
320 PRINT TAB(20) "So.";
330 PRINT TAB(30) "Jr.";
340 PRINT TAB(40) "Sr.";
350 PRINT TAB(50) "Total"
360 FOR I=1 TO R
370    PRINT R$(I);
380    FOR J=1 TO C+1
390       PRINT TAB(J*9+5) V(I,J);
400    NEXT J
410    PRINT
420 NEXT I
430 PRINT
440 RETURN
450 REM -----Data------------------------------------------------------------
460 DATA 3,4
470 REM -----Set 1-----
480 DATA Paula Tishun,224,326,201,189
490 DATA Phil Abuster,101,48,162,93
500 DATA Anite Yurvote,258,215,56,106
510 REM -----Set 2-----
520 REM DATA 5,4
530 REM DATA Joe Mahma,81,57,115,189
540 REM DATA Slick Willy,115,223,61,119
550 REM DATA D.A. Loser,83,93,213,52
560 REM DATA A. Republicrat,121,127,113,173
570 REM DATA D. Winner,150,131,26,51
580 REM -----End-------------------------------------------------------------
