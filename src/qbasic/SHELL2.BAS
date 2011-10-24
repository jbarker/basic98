10 REM  Jay Barker
20 REM  Date: 04/23/98
30 REM  Purpose: To shell sort in ascending order
40 REM  Program Name: shell2
50 REM  Variable Dictionary
60 REM  N$() = Name array
70 REM  I = Counter 1
80 REM  J = Counter 2
90 REM  Z = Number of data items
100 REM T$= Temporary storage
110 REM F = Flag
120 REM N$= Number string
130 REM A$= Switch string 1
140 REM B$= Switch string 2
150 REM  ----------------------------------------------------------------------
160 CLS : Z = 20: DIM N$(Z)
170 GOSUB 210: REM Read Data
175 GOSUB 260: REM Print Data
180 GOSUB 320: REM Order Data
190 GOSUB 260: REM Print Data
200 END
210 REM ----Read Data----------------------------------------------------------
220 FOR I = 1 TO Z
230   READ N$(I)
240 NEXT I
250 RETURN
260 REM ----Print Data---------------------------------------------------------
270 FOR I = 1 TO Z
280   PRINT N$(I)
290 NEXT I
300 PRINT : PRINT
310 RETURN
320 REM ----Order Data---------------------------------------------------------
330 X = INT(Z / 2)
340 WHILE X >= 1
350   FOR K = 1 TO X
360     FOR I = K TO (Z - X) STEP X
370       F = 0: J = I: T$ = N$(I + X)
380       WHILE J >= 1 AND F = 0
390         IF T$ > N$(J) THEN F = 1 ELSE N$(J + X) = N$(J): J = J - X
400       WEND
410       N$(J + X) = T$
420     NEXT I
430   NEXT K
440   X = INT(X / 2)
450 WEND
460 PRINT "Names in alphabetcial order"
470 RETURN
480 REM ----Data---------------------------------------------------------------
490 DATA Wagon,Sandwich,Labor,Board,Goround,Time,King,Forapples,Ayellowribbon
500 DATA Raphone,Nade,Than,Serlylight,Melt,Bearer,Day,Urupp,Wagon,Wise,Sled
510 REM
520 REM -----------------------------------------------------------------------

