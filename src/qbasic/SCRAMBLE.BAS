10 REM  Jay Barker
20 REM  Date: 04/14/98
30 REM  Purpose: To guess scrambled words
40 REM  Program Name: scramble
50 REM  Variable Dictionary
60 REM     D = Number of data
70 REM    T$ = Title string
80 REM  D$() = Data array
90 REM     I = Counter, menu choice
100 REM    J = Counter
110 REM    X = Sentinel value
120 REM   I$ = Input string
130 REM    R = Random data
140 REM   R2 = Random letter
150 REM   S$ = Scrambled word string
160 REM   M$ = Temporary mid string
170 REM    T = Total possible
180 REM   CT = Correct total
190 REM    L = Word length
200 REM    W = Words to unscramble
210 REM -----Main Program------------------------------------------------------
220 GOSUB 330: REM Read Data
230 GOSUB 1120: REM Instructions
240 WHILE X <> 1
250 GOSUB 390: REM Print Menu
260 ON I GOSUB 510, 1020, 1120, 1280
270   REM 510 Play
280   REM 1020 Reset Scores
290   REM 1120 Instructions
300   REM 1280 Quit
310 WEND
320 REM -----Read Data---------------------------------------------------------
330 READ D, T$: DIM D$(D): DIM M$(40)
340 FOR I = 1 TO D
350   READ D$(I)
360 NEXT I
370 RETURN
380 REM -----Print Menu--------------------------------------------------------
390 CLS
400 PRINT TAB(20); "Super Word Scramble"
410 PRINT TAB(20); "-------------------"
420 PRINT : PRINT TAB(20); "Topic: "; T$
430 PRINT : PRINT TAB(20); "1. Play Super Word Scramble"
440 PRINT : PRINT TAB(20); "2. Reset Scores"
450 PRINT : PRINT TAB(20); "3. View Instructions Again"
460 PRINT : PRINT TAB(20); "4. Quit"
470 PRINT : PRINT TAB(20); "Choose a selection"
480 PRINT TAB(20); : INPUT I
490 RETURN
500 REM -----Play--------------------------------------------------------------
510 CLS
520 PRINT
530 PRINT "How many words do you want to try?"
540 INPUT W
550 FOR I = 1 TO W
560   CLS
570   PRINT
580   PRINT "Super Word Scramble - Word"; I
590   PRINT "-----------------------------"
600   PRINT
610   PRINT "Unscramble... "
620   RANDOMIZE TIMER: R = INT(RND(1) * D) + 1
630   L = LEN(D$(R))
640   FOR J = 1 TO L
650     M$(J) = MID$(D$(R), J, 1)
660   NEXT J
670   FOR J = 1 TO L
680     RANDOMIZE TIMER
690     R2 = INT(RND(1) * L) + 1
700     WHILE M$(R2) = " "
710       RANDOMIZE TIMER
720       R2 = INT(RND(1) * L) + 1
730     WEND
740     S$ = S$ + M$(R2)
750     M$(R2) = " "
760   NEXT J
770   PRINT S$: PRINT
780   T = T + 1
790   INPUT I$
800   IF I$ = D$(R) THEN CT = CT + 1: PRINT "Correct!"
810   IF I$ <> D$(R) THEN C = 0: GOSUB 900: REM Incorrect
820   PRINT : PRINT "Number correct:"; CT
830   PRINT "Number possible:"; T
840   S$ = ""
850   PRINT : PRINT "Press ENTER to continue"
860   INPUT I$
870 NEXT I
880 RETURN
890 REM -----Incorrect---------------------------------------------------------
900 WHILE C = 0
910   PRINT "Incorrect. Would you like to try again? (Y/N)"
920   INPUT I$
930   IF I$ = "N" THEN PRINT "The answer is "; D$(R): RETURN
940   PRINT : PRINT "Try again to unscramble... "
950   PRINT S$
960   INPUT I$
970   IF I$ = D$(R) THEN CT = CT + 1: PRINT "Correct!": RETURN
980   IF I$ <> D$(R) THEN C = 0
990 WEND
1000 RETURN
1010 REM -----Reset Scores------------------------------------------------------
1020 CLS
1030 CT = 0: T = 0
1040 PRINT TAB(10); "*********************************************************"
1050 PRINT TAB(10); "*    Your Super Word Scramble scores have been reset.   *"
1060 PRINT TAB(10); "*********************************************************"
1070 PRINT
1080 PRINT TAB(10); "Press ENTER to continue"
1090 INPUT I$
1100 RETURN
1110 REM -----Instructions------------------------------------------------------
1120 CLS
1130 PRINT TAB(10); "*********************************************************"
1140 PRINT TAB(10); "*         Instructions for Super Word Scramble          *"
1150 PRINT TAB(10); "*********************************************************"
1160 PRINT TAB(10); "* To play Super Word Scramble, please follow the        *"
1170 PRINT TAB(10); "* instructions. You will be shown a series of scrambled *"
1180 PRINT TAB(10); "* words. Your job is to unscramble them and enter each  *"
1190 PRINT TAB(10); "* word's correct spelling. Remember to use ALL CAPS and *"
1200 PRINT TAB(10); "* enter underscores (the _ character) in place of       *"
1210 PRINT TAB(10); "* spaces between words. And, have fun!                  *"
1220 PRINT TAB(10); "*********************************************************"
1230 PRINT
1240 PRINT TAB(10); "Press ENTER to continue"
1250 INPUT I$
1260 RETURN
1270 REM -----Quit--------------------------------------------------------------
1280 CLS
1290 PRINT TAB(10); "*********************************************************"
1300 PRINT TAB(10); "*        Thanks for playing Super Word Scramble         *"
1310 PRINT TAB(10); "*                    Play again soon                    *"
1320 PRINT TAB(10); "*********************************************************"
1330 PRINT : PRINT : END
1340 REM -----Data--------------------------------------------------------------
1350 DATA 30,Major League Baseball Teams
1360 DATA LOS_ANGELES_DODGERS
1370 DATA COLORADO_ROCKIES
1380 DATA SAN_FRANCISCO_GIANTS
1390 DATA SAN_DIEGO_PADRES
1400 DATA ARIZONA_DIAMONDBACKS
1410 DATA CHICAGO_CUBS
1420 DATA ST._LOUIS_CARDINALS
1430 DATA HOUSTON_ASTROS
1440 DATA MILWAUKEE_BREWERS
1450 DATA PITTSBURGH_PIRATES
1460 DATA CINCINNATI_REDS
1470 DATA ATLANTA_BRAVES
1480 DATA NEW_YORK_METS
1490 DATA PHILADELPHIA_PHILLIES
1500 DATA FLORIDA_MARLINS
1510 DATA MONTREAL_EXPOS
1520 DATA SEATTLE_MARINERS
1530 DATA TEXAS_RANGERS
1540 DATA ANAHEIM_ANGELS
1550 DATA OAKLAND_ATHLETICS
1560 DATA CLEVELAND_INDIANS
1570 DATA CHICAGO_WHITE_SOX
1580 DATA DETROIT_TIGERS
1590 DATA MINNESOTA_TWINS
1600 DATA KANSAS_CITY_ROYALS
1610 DATA BALTIMORE_ORIOLES
1620 DATA NEW_YORK_YANKEES
1630 DATA TORONTO_BLUE_JAYS
1640 DATA BOSTON_RED_SOX
1650 DATA TAMPA_BAY_DEVIL_RAYS
1660 REM -----End---------------------------------------------------------------

