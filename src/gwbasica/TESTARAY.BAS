10 REM  Jay Barker
20 REM  Date: 02/12/97
30 REM  Purpose: To read test scores and output them
40 REM  Program Name: testaray
50 REM  Variable Dictionary
60 REM  S() = Test score array
70 REM  I = Counter
80 REM  T$() = Title string array
90 REM ----- Main Program ----------------------------------------------------
100 CLS : DIM S(100)
110 GOSUB 150 : REM Read data
120 GOSUB 250 : REM Print scores
130 END
140 REM ----- Read Data -------------------------------------------------------
150 FOR I=1 TO 3
160   READ T$(I)
170 NEXT I
180 READ I
190 WHILE I<>-1
200   S(I)=S(I)+1
210   READ I
220 WEND
230 RETURN
240 REM ----- Print Scores ----------------------------------------------------
250 FOR I=1 TO 3
260   PRINT T$(I)
270 NEXT I
280 PRINT
290 PRINT "Scores","Times"
300 PRINT "------","-----"
310 FOR I=100 TO 0 STEP -1
320   IF S(I)>0 THEN PRINT I,S(I)
330 NEXT I
340 RETURN
350 REM ----- Data ------------------------------------------------------------
360 DATA Class = U.S. History, Test #1, Date = Feb 10
370 DATA 80,66,50,66,40,40,70,50,25,70,80,66
380 DATA 50,99,66,0,40,80,70,66,50,50,66,25
390 DATA -1,0,100,80,60,100
400 REM ----- End -------------------------------------------------------------
