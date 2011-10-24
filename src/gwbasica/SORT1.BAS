10 REM  Jay Barker
20 REM  Date: 01/09/98
30 REM  Purpose: To sort data in ascending order
40 REM  Program Name: Sort1
50 REM  Variable Dictionary
60 REM  I = index/subscript/loop counter
70 REM  J = index/loop counter
80 REM  N = number of data items
90 REM  L() = list (array) of numbers
100 REM T = temporary storage
110 REM -----------------------------------------------------------------------
120 GOSUB 170 : REM Read Data
130 GOSUB 260 : REM Bubblesort
140 GOSUB 330 : REM Print
150 END
160 REM ----- Read Data -----
170 N=17
180 DIM L(N)
190 PRINT "UNSORTED"
200 FOR I=1 TO (N)
210    READ L(I)
220    PRINT L(I);
230 NEXT I
240 RETURN
250 REM ----- Bubblesort -----
260 FOR J=1 TO N-1
270    FOR I=1 TO N-J
280       IF L(I)>L(I+1) THEN T=L(I) : L(I)=L(I+1) : L(I+1)=T
290    NEXT I
300 NEXT J
310 RETURN
320 REM ----- Print -----
330 PRINT
340 PRINT "SORTED"
350 FOR J=1 TO N
360    PRINT L(J);
370 NEXT J
380 RETURN
390 REM ----- Data -----
400 DATA 3,18,12,-34,-238,66,10,-606,9,0,23,67,345,234,98,-2,5
