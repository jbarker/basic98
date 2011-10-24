10 REM  Jay Barker
20 REM  Date: 04/24/98
30 REM  Purpose: To shell sort in ascending order
40 REM  Program Name: shell3
50 REM  Variable Dictionary
60 REM  N$(,) = Name array
70 REM      I = Counter 1
80 REM      J = Counter 2
90 REM      Z = Number of data items
100 REM    T$ = Temporary storage
110 REM     F = Flag
120 REM  ----------------------------------------------------------------------
130 CLS : READ Z : DIM N$(Z,3)
140 GOSUB 200  : REM Read Data
150 GOSUB 250  : REM Print Data
160 GOSUB 310  : REM Order Data
170 GOSUB 480  : REM Rearrange data
180 GOSUB 590  : REM Print Final Data
190 END
200 REM ----Read Data----------------------------------------------------------
210 FOR I=1 TO Z
220   READ N$(I,1),N$(I,2),N$(I,3)
230 NEXT I
240 RETURN
250 REM ----Print Data---------------------------------------------------------
260 FOR I=1 TO Z
270   PRINT TAB(1) N$(I,1);TAB(20) N$(I,2);TAB(30) N$(I,3)
280 NEXT I
290 PRINT : PRINT
300 RETURN
310 REM ----Order Data---------------------------------------------------------
320 X=INT(Z/2)
330 WHILE X>=1
340   FOR K=1 TO X
350     FOR I=K TO (Z-X) STEP X
360       F=0 : J=I : T$=N$(I+X,1)
370       WHILE J>=1 AND F=0
380         IF T$>N$(J,1) THEN F=1 ELSE N$(J+X,1)=N$(J,1) : J=J-X
390       WEND
400       N$(J+X,1)=T$
410     NEXT I
420   NEXT K
430   X=INT(X/2)
440 WEND
450 PRINT "Names in alphabetcial order"
460 RETURN
470 REM ----Rearrange Data-----------------------------------------------------
480 FOR I=1 TO Z
490   F=0
500   FOR J=1 TO LEN(N$(I,1))
510     T$=MID$(N$(I,1),J,1)
520     IF ASC(T$)<>44 AND F=0 THEN NL$(I)=NL$(I)+T$ : REM "Comma"
530     IF ASC(T$)<>44 AND F=1 THEN NF$(I)=NF$(I)+T$
540     IF ASC(T$)=44 THEN NL$(I)=" "+NL$(I) : F=1
550   NEXT J
560 NEXT I
570 RETURN
580 REM ----Print Final Data---------------------------------------------------
590 FOR I=1 TO Z
600   PRINT TAB(1) NF$(I);NL$(I);TAB(20) N$(I,2);TAB(30) N$(I,3)
610 NEXT I
620 PRINT : PRINT
630 RETURN
640 REM ----Data---------------------------------------------------------------
650 DATA 6,"Wagon,Patty",12,F,"Sandwich,Ruben",11,M,"Labor,Manuel",12,M
660 DATA "Board,Bill",10,M,"Goround,Mary",12,F,"Time,Justin",11,M
670 REM DATA "King,Joe",10,M,"Forapples,Bob",12,M,"Ayellowribbon,Ty",10,F
680 REM DATA "Raphone,Mike",11,M,"Nade,Sarah",12,F,"Than,Les",11,M
690 REM DATA "Serlylight,Dawn",11,F,"Melt,Patty",10,F,"Bearer,Paul",11,M
700 REM DATA "Day,Sonny",12,F,"Urupp,Phil",12,M,"Wagon,Chuck",11,M
710 REM DATA "Wise,Penny",11,F,"Sled,Bob",11,M
720 REM -----------------------------------------------------------------------
