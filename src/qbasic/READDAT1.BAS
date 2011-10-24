10 REM  Jay Barker
20 REM  Date: 12/04/97
30 REM  Purpose: To keep track of fuel economy of a car.
40 REM  Program Name: READDAT1
50 REM  Variable Dictionary
60 REM  D$ = Date
70 REM  MI = Miles
80 REM  GAL = Gallons
90 REM  TMI = Total Miles
100 REM  TGAL = Total Gallons
110 REM  MPG = Miles Per Gallon
120 REM ------------------------------------------------------------------------
130 PRINT TAB(1); "DATE"; TAB(20); "MILES"; TAB(27); "GALLONS"
140 MI = 0: GAL = 0: TMI = 0: TGAL = 0
150    READ D$, MI, GAL
160 WHILE D$ <> "STOP"
170    TMI = TMI + MI: TGAL = TGAL + GAL
180    PRINT TAB(1); D$; TAB(20); MI; TAB(27); GAL
190    READ D$, MI, GAL
200 WEND
210 MPG = INT(TMI / TGAL * 100 + .5) / 100
220 PRINT "TOTAL MILES="; TMI
230 PRINT "TOTAL GALLONS="; TGAL
240 PRINT "MILES PER GALLON="; MPG
250 REM ------------------------------------------------------------------------
260 REM --- SET A ---
270 DATA APRIL 8,282,14,APRIL 13,223,12,APRIL 28,265,14
280 DATA MAY 1,244,13,MAY 18,273,12,MAY 25,313,15
290 REM --- SET B ---
300 DATA JUNE 9,285,14.4,JUNE 20,279.5,14.0,JUNE 30,287.7,15.3
310 DATA JULY 8,262.3,13.6,JULY 18,262.9,13.9
320 REM --- STOP ---
330 DATA STOP,0,0
340 REM ------------------------------------------------------------------------
350 END

