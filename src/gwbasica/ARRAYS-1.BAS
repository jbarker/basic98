10 REM  Jay Barker
20 REM  Date: 12/19/97
30 REM  Purpose: To randomly select players
40 REM  Program Name: Arrays-1
50 REM  Variable Dictionary
60 REM  L$() = List of players
70 REM  N = Number of players
80 REM  C = Counter
90 REM  R = Random number
100 REM R$= Temporary transfer number
110 REM -----------------------------------------------------------------------
120 REM ----- Main Program -----
130 PRINT "Tonight's Starting Lineup for the Tacoma Supes"
140 GOSUB 220 : REM Read Players
150 GOSUB 290 : REM Select Players
160 END
170 REM -----------------------------------------------------------------------
180 REM ----- Data -----
190 DATA 12,Aaron,Dale,David,Detlef,Gary,Greg,Hersey,Jerome,Joe,Nate,Sam,Vin
200 REM -----------------------------------------------------------------------
210 REM ----- Read Players -----
220 READ N
230 DIM L$(N)
240 FOR C=1 TO N
250    READ L$(C)
260 NEXT C
270 RETURN
280 REM ----- Select Players -----
290 FOR C=1 TO 5
300    RANDOMIZE TIMER
310    R=INT(RND(1)*N)+1
320    GOSUB 370 : REM Repeat
330    PRINT T$
340 NEXT C
350 RETURN
360 REM ----- Repeat -----
370 WHILE L$(R)=" "
380    RANDOMIZE TIMER
390    R=INT(RND(1)*N)+1
400 WEND
410 T$=L$(R)
420 L$(R)=" "
430 RETURN
440 REM -----------------------------------------------------------------------
