10 REM  Jay Barker
20 REM  Date: 12/11/97
30 REM  Purpose: To find total, count, and average test scores
40 REM  Program Name: Test-sub
50 REM  Variable Dictionary
60 REM  P$ = Period
70 REM  C  = Score count
80 REM  T  = Total of scores
90 REM  D$ = Test date
100 REM S  = Test score
110 REM A  = Test average
120 REM -----------------------------------------------------------------------
130 READ P$
140 WHILE P$<>"QUIT"
150    GOSUB 340 : REM Read and total
160    GOSUB 460 : REM Average
170    READ P$
180 WEND
190 END
200 REM ----- Data for Period 4 -----
210 DATA "Period 4","December 2"
220 DATA 80,90,100,85,65,80,70,60,95,90,84,96,75
230 DATA 40,85,85,90,95,80,70
240 DATA 80,90,50,85,70,77 : REM Absent student scores
250 DATA -1
260 REM ----- Data for Period 5 -----
270 DATA "Period 5","December 1"
280 DATA 65,85,35,92,87,66,67,99,92,83,84,98,87
290 DATA 75,74
300 DATA -1,"QUIT"
310 REM
320 REM
330 REM ----- SUB Read and Total -----
340 C=0 : T=0
350 READ D$,S
360 PRINT "Test Scores for: ";P$
370 PRINT "Test date: ";D$
380 PRINT "Scores: "
390 WHILE S<>-1
400    PRINT S;
410    C=C+1 : T=T+S
420    READ S
430 WEND
440 RETURN
450 REM ----- SUB Average -----
460 A=T/C
470 A=INT(A*100+.5)/100
480 PRINT
490 PRINT "Average test score:";A
500 PRINT
510 RETURN
520 REM -----------------------------------------------------------------------
