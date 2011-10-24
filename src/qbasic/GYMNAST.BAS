10 REM  Jay Barker
20 REM  Date: 03/26/98
30 REM  Purpose: To tabulate gymnastics scores
40 REM  Program Name: gymnast
50 REM  Variable Dictionary
60 REM     R = Number of rows / competitors
70 REM     C = Number of columns / events
80 REM   I,J = Loop counters
90 REM  R$() = Row headings
100 REM  W() = Winner array
110 REM W$() = Winner name array
120 REM   T$ = Title string
130 REM V(,) = Event scores array
140 REM -----Main Program----------------------------------------------------
150 READ T$, R, C
160 DIM V(R + 1, C + 1): DIM W(C + 1): DIM W$(R)
170 GOSUB 210: REM Read & Total
180 GOSUB 320: REM Output
190 END
200 REM -----Read & Total----------------------------------------------------
210 FOR I = 1 TO R
220    READ R$(I)
230    FOR J = 1 TO C
240       READ V(I, J)
250       V(I, C + 1) = V(I, C + 1) + V(I, J)
260       IF V(I, J) > W(J) THEN W(J) = V(I, J): W$(J) = R$(I)
270    NEXT J
280    IF V(I, C + 1) > W(C + 1) THEN W(C + 1) = V(I, C + 1): W$(C + 1) = R$(I)
290 NEXT I
300 RETURN
310 REM -----Output----------------------------------------------------------
320 PRINT : COLOR 14
330 PRINT TAB(19); T$
340 PRINT : COLOR 15
350 PRINT TAB(1); "Name";
360 PRINT TAB(19); "Bars";
370 PRINT TAB(28); "Beam";
380 PRINT TAB(36); "Floor";
390 PRINT TAB(45); "Vault";
400 PRINT TAB(54); "Total"
410 FOR I = 1 TO R
420    PRINT R$(I);
430    FOR J = 1 TO C + 1
440       PRINT TAB(J * 9 + 9); USING "##.##"; V(I, J);
450    NEXT J
460    PRINT
470 NEXT I
480 PRINT
490 PRINT "All-Around Winner: "; W$(C + 1); TAB(37); "Score:"; USING "##.##"; W(C + 1)
500 PRINT "Bars Winner: "; W$(1); TAB(37); "Score:"; USING "##.##"; W(1)
510 PRINT "Beam Winner: "; W$(2); TAB(37); "Score:"; USING "##.##"; W(2)
520 PRINT "Floor Winner: "; W$(3); TAB(37); "Score:"; USING "##.##"; W(3)
530 PRINT "Vault Winner: "; W$(4); TAB(37); "Socre:"; USING "##.##"; W(4)
540 PRINT
550 RETURN
560 REM -----Data------------------------------------------------------------
570 REM -----Set 1-----
580 REM DATA National Championship Gymnastic Meet,6,4
590 REM DATA Ariel Dismount,8.50,9.60,8.00,8.95
600 REM DATA Bach Flipp,8.75,8.25,9.50,8.90
610 REM DATA Chinh Upp,9.30,8.75,9.10,9.30
620 REM DATA Golda Medal,9.10,9.50,9.00,9.50
630 REM DATA Spring Board,9.05,8.80,8.90,9.55
640 REM DATA Summer Salt,9.00,8.90,9.35,9.40
650 REM -----Set 2-----
660     DATA Stadium Knowledge Bowl Competition,7,4
670     DATA Bark-Dogg,9.10,9.20,9.30,9.40
680     DATA Killa,8.75,9.50,8.60,9.00
690     DATA Dungstar,9.60,9.40,9.35,8.85
700     DATA Robot,9.65,8.95,9.05,9.55
710     DATA Boonspang,8.85,9.65,8.90,9.35
720     DATA Bean,9.25,9.70,9.55,8.80
730     DATA Purk-Dogg,9.00,9.35,8.95,9.80
740 REM -----End-------------------------------------------------------------

