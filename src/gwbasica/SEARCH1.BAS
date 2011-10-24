10 REM  Jay Barker
20 REM  Date: 01/09/98
30 REM  Purpose: To do a linear (sequential) search
40 REM  Program Name: Search1
50 REM  Variable Dictionary
60 REM  S = object of search
70 REM  F = flag
80 REM  I = index/subscript/loop counter
90 REM  N = number of data items
100 REM L()=list (array) of numbers
110 REM -----------------------------------------------------------------------
120 GOSUB 160 : REM Read Data
130 GOSUB 260 : REM Linear Search
140 END
150 REM ----- Read Data -----
160 N=14
170 DIM L(N)
180 READ X
190 FOR I=1 TO (N-1)
200    L(I)=X
210    PRINT X;
220    READ X
230 NEXT I
240 RETURN
250 REM ----- Linear Search -----
260 PRINT "What number are you searching for?"
270 INPUT S
280 F=0
290 FOR I=1 TO N
300    IF S=L(I) THEN PRINT S;"located at";I : F=1
310 NEXT I
320 IF F=0 THEN PRINT S;"not found."
330 RETURN
340 REM ----- Data -----
350 DATA 518,123,234,-238,66,10,-606,99,0,23,567,345,234,987
