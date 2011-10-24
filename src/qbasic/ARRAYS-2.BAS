10 REM  Jay Barker
20 REM  Date: 12/19/97
30 REM  Purpose: To randomly select matchups for first-round opponents.
40 REM  Program Name: Arrays-2
50 REM  Variable Dictionary
60 REM  L$() = List of players
70 REM  N = Number of players
80 REM  C = Counter
90 REM  R = Random number
100 REM R$= Temporary transfer number
110 REM -----------------------------------------------------------------------
120 REM ----- Main Program -----
130 PRINT "Cheers Ping Pong Tournament: First Round Matchups"
140 GOSUB 230: REM Read Players
150 GOSUB 300: REM Select Players
160 END
170 REM -----------------------------------------------------------------------
180 REM ----- Data -----
190 DATA 16,Carla,Coach,Cliff,Diane,Esther,Frasier,Kelly,Lillith
200 DATA Loretta,Nick,Norm,Paul,Rebecca,Robin,Sam,Woody
210 REM -----------------------------------------------------------------------
220 REM ----- Read Players -----
230 READ N
240 DIM L$(N)
250 FOR C = 1 TO N
260    READ L$(C)
270 NEXT C
280 RETURN
290 REM ----- Select Players -----
300 FOR C = 1 TO N / 2
310    RANDOMIZE TIMER
320    R = INT(RND(1) * N) + 1
330    GOSUB 410: REM Repeat
340    PRINT "Match"; C; T$; " vs. ";
350    R = INT(RND(1) * N) + 1
360    GOSUB 410: REM Repeat
370    PRINT T$
380 NEXT C
390 RETURN
400 REM ----- Repeat -----
410 WHILE L$(R) = " "
420    RANDOMIZE TIMER
430    R = INT(RND(1) * N) + 1
440 WEND
450 T$ = L$(R)
460 L$(R) = " "
470 RETURN
480 REM -----------------------------------------------------------------------

