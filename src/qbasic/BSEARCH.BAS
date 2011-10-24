10 REM  Jay Barker
20 REM  Date: 05/04/98
30 REM  Purpose: To search an ascending ordered list for an input number
40 REM  Program Name: bsearch
50 REM  Variable Dictionary
60 REM  S$(,) = States array
70 REM  I = Counter 1
80 REM  J = Counter 2
90 REM  Z = Number of data items
100 REM T$= Temporary storage
110 REM F = Flag
120 REM N$= Number string
130 REM A$= Switch string 1
140 REM B$= Switch string 2
150 REM  ----------------------------------------------------------------------
160 CLS : Z = 50: DIM S$(Z, 2)
170 PRINT "Loading..."
180 GOSUB 340: REM Read Data
190 GOSUB 390: REM Order Data
200 WHILE E$ = ""
210   CLS
220   GOSUB 550: REM Menu
230   GOSUB 650: REM Binary Search
240   PRINT
250   PRINT "Press ENTER to continue, or Q to quit."
260   INPUT E$
270   WHILE E$ <> "" AND E$ <> "Q"
280     PRINT
290     PRINT "Press ENTER to continue, or Q to quit."
300     INPUT E$
310   WEND
320 WEND
330 END
340 REM ----Read Data----------------------------------------------------------
350 FOR I = 1 TO Z
360   READ S$(I, 1), S$(I, 2)
370 NEXT I
380 RETURN
390 REM ----Order Data---------------------------------------------------------
400 X = INT(Z / 2)
410 WHILE X >= 1
420   FOR K = 1 TO X
430     FOR I = K TO (Z - X) STEP X
440       F = 0: J = I: T$ = S$(I + X, 1): T2$ = S$(I + X, 2)
450       WHILE J >= 1 AND F = 0
460         IF T$ > S$(J, 1) THEN F = 1 ELSE S$(J + X, 1) = S$(J, 1): S$(J + X, 2) = S$(J, 2): J = J - X
470       WEND
480       S$(J + X, 1) = T$: S$(J + X, 2) = T2$
490     NEXT I
500   NEXT K
510   X = INT(X / 2)
520 WEND
530 RETURN
540 REM ----Menu---------------------------------------------------------------
550 PRINT "States and Capitals Search"
560 PRINT "--------------------------"
570 PRINT
580 PRINT "Note: Use ALL CAPS."
590 PRINT
600 PRINT "What state do you want to search for?"
610 INPUT F$
620 PRINT
630 RETURN
640 REM ----Binary Search------------------------------------------------------
650 L = 1: R = Z
660 WHILE L <= R
670   M = INT((L + R) / 2)
680   IF F$ = S$(M, 1) THEN PRINT "The capital of "; F$; " is "; S$(M, 2); ".": RETURN
690   IF F$ < S$(M, 1) THEN R = M - 1 ELSE L = M + 1
700 WEND
710 PRINT "The state "; F$; " was not found."
720 PRINT "Please check your spelling and use ALL CAPS."
730 RETURN
740 REM ----Data---------------------------------------------------------------
750 DATA  COLORADO, DENVER, CONNECTICUT, HARTFORD, DELAWARE, DOVER, FLORIDA, TALLAHASSEE, GEORGIA, ATLANTA, HAWAII, HONOLULU, IDAHO, BOISE
760 DATA ILLINOIS, SPRINGFIELD, INDIANA, INDIANAPOLIS, IOWA, DES MOINES, KANSAS, TOPEKA, KENTUCKY, FRANKFORT, LOUISIANA, BATON ROUGE
770 DATA WASHINGTON, OLYMPIA, WEST VIRGINIA, CHARLESTON, WISCONSIN, MADISON, WYOMING, CHEYENNE
780 DATA MONTANA, HELENA, NEBRASKA, LINCOLN, NEVADA, CARSON CITY, NEW HAMPSHIRE, CONCORD, NEW JERSEY, TRENTON, NEW MEXICO, SANTA FE, NEW YORK, ALBANY, NORTH CAROLINA, RALEIGH
790 DATA PENNSYLVANIA, HARRISBURG, RHODE ISLAND, PROVIDENCE, SOUTH CAROLINA, COLUMBIA, SOUTH DAKOTA, PIERRE, TENNESSEE, NASHVILLE, TEXAS, AUSTIN
800 DATA UTAH, SALT LAKE CITY, VERMONT, MONTPELIER, VIRGINIA, RICHMOND
810 DATA ALABAMA, MONTGOMERY, ALASKA, JUNEAU, ARIZONA, PHOENIX, ARKANSAS, LITTLE ROCK, CALIFORNIA, SACRAMENTO
820 DATA NORTH DAKOTA, BISMARCK, OHIO, COLUMBUS, OKLAHOMA, OKLAHOMA CITY, OREGON, SALEM
830 DATA MISSISSIPPI, JACKSON, MISSOURI, JEFFERSON CITY
840 DATA  MAINE, AUGUSTA, MARYLAND, ANNAPOLIS, MASSACHUSETTS, BOSTON, MICHIGAN, LANSING, MINNESOTA, ST. PAUL

