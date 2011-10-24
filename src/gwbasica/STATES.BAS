10 REM  Jay Barker
20 REM  Date: 03/12/98
30 REM  Purpose: To make a game for studying state capitals
40 REM  Program Name: states2
50 REM  Variable Dictionary
60 REM  S$() = State string array (Two dimensional)
70 REM  C$() = Capital string array (Replaced)
80 REM    RS = Round score (RS/5)
90 REM    TS = Total score (TS/TP)
100 REM   TP = Total possible
110 REM    F = Flag
120 REM    R = Round
130 REM    Q = Question
140 REM   RN = Random number
150 REM   I$ = Input string
160 REM R$() = Right string array
170 REM W$() = Wrong string array
180 REM -----Define Functions---------------------------------------------------
190 RANDOMIZE TIMER
200 DEF FNR(N)=INT(RND(1)*N)+1
210 DEF FNRN(N)=INT((N*100)+.5)
220 REM -----Main Program-------------------------------------------------------
230 DIM S$(50,2) : DIM R$(5) : DIM W$(5) : DIM F(50)
240 GOSUB 600 : REM Read Data
250 WHILE MC<>4
260   CLS
270   GOSUB 380 : REM Print Menu
280   GOSUB 550 : REM Reset Flags
290   GOSUB 720 : REM Menu Choice
300   ON MC GOSUB 790,1390,1560,1680
310     REM  790 State-Capital
320     REM 1390 View Scores
330     REM 1560 Reset Scores
340     REM 1670 End Game
350 WEND
360 END
370 REM -----Print Menu---------------------------------------------------------
380 PRINT "********************************************************************"
390 PRINT "                            Welcome to the"
400 PRINT "                       States and Capitals Game"
410 PRINT "********************************************************************"
420 PRINT
430 PRINT "              Choose your selection from the menu below."
440 PRINT
450 PRINT "           1. Enter the capital for a given state."
460 PRINT
470 PRINT "           2. View your scores."
480 PRINT
490 PRINT "           3. Reset your scores to zero."
500 PRINT
510 PRINT "           4. Exit the game."
520 PRINT
530 RETURN
540 REM -----Reset Flags--------------------------------------------------------
550 FOR C=1 TO 50
560   F(C)=0
570 NEXT C
580 RETURN
590 REM -----Read Data----------------------------------------------------------
600 FOR C=1 TO 50
610   READ S$(C,1)
620   READ S$(C,2)
630 NEXT C
640 FOR C=1 TO 5
650   READ R$(C)
660 NEXT C
670 FOR C=1 TO 5
680   READ W$(C)
690 NEXT C
700 RETURN
710 REM -----Menu Choice--------------------------------------------------------
720 INPUT "              What is your selection";MC
730 PRINT
740 PRINT "              You chose selection";MC;"
750 PRINT "              Press ENTER to continue."
760 INPUT I$
770 RETURN
780 REM -----State-Capital------------------------------------------------------
790 CLS
800 FOR R=1 TO 10 : REM Round number
810 RS=0
820   FOR Q=1 TO 5 : REM Question number
830 CLS
840 PRINT "********************************************************************"
850 PRINT " The States and Capitals Game - Round";R;"- Question";Q
860 PRINT "********************************************************************"
870 PRINT
880     TP=TP+1
890     RN=FNR(50)
900     WHILE F(RN)=1
910       RN=FNR(50)
920     WEND
930     F(RN)=1
940     PRINT "What is the capital of ";S$(RN,1);"?"
950     INPUT I$
960     PRINT
970     IF S$(RN,2)=I$ THEN GOSUB 1270
980     IF S$(RN,2)<>I$ THEN GOSUB 1330
990     PRINT "Press ENTER to continue."
1000     INPUT I$
1010   NEXT Q
1020 CLS
1030 PRINT "********************************************************************"
1040 PRINT " The States and Capitals Game - Round";R;"Summary"
1050 PRINT "********************************************************************"
1060 PRINT
1070   TS=TS+RS
1080   PRINT "Your round score:";RS
1090   PRINT "Round points possible: 5"
1100   PRINT "Round percentage:";FNRN(RS/5);"%"
1110   PRINT
1120 PRINT "********************************************************************"
1130 PRINT " The States and Capitals Game - Game Summary"
1140 PRINT "********************************************************************"
1150   PRINT
1160   PRINT "Your game score:";TS
1170   PRINT "Game points possible:";TP
1180   PRINT "Game percentage:";FNRN(TS/TP);"%"
1190   PRINT
1200   PRINT "Would you like to continue playing? (Y/N)"
1210   INPUT I$
1220   PRINT
1230   IF I$="N" THEN RETURN
1240 NEXT R
1250 RETURN
1260 REM -----CS Right----------------------------------------------------------
1270 RS=RS+1 : RN2=FNR(5)
1280 BEEP : PRINT R$(RN2)
1290 PRINT "Yes, the capital of ";S$(RN,1);" is ";S$(RN,2);"."
1300 PRINT
1310 RETURN
1320 REM -----CS Wrong---------------------------------------------------------
1330 RN2=FNR(5)
1340 BEEP : BEEP : BEEP : PRINT W$(RN2)
1350 PRINT "No, the capital of ";S$(RN,1);" is really ";S$(RN,2);"."
1360 PRINT
1370 RETURN
1380 REM -----View Scores------------------------------------------------------
1390 CLS
1400 PRINT "********************************************************************"
1410 PRINT " The States and Capitals Game - View Scores"
1420 PRINT "********************************************************************"
1430 PRINT
1440 PRINT "Your last round score:";RS
1450 PRINT "Round points possible: 5"
1460 PRINT "Round percentage:";FNRN(RS/5);"%"
1470 PRINT
1480 PRINT "Your game score:";TS
1490 PRINT "Game points possible:";TP
1500 IF TP<>0 THEN PRINT "Game percentage:";FNRN(TS/TP);"%"
1510 PRINT
1520 PRINT "Press ENTER to continue."
1530 INPUT I$
1540 RETURN
1550 REM -----Reset Scores-----------------------------------------------------
1560 CLS
1570 PRINT "********************************************************************"
1580 PRINT " The States and Capitals Game - Reset Scores"
1590 PRINT "********************************************************************"
1600 PRINT
1610 RS=0 : TS=0 : TP=0
1620 PRINT "Your scores have been reset."
1630 PRINT
1640 PRINT "Press ENTER to continue."
1650 INPUT I$
1660 RETURN
1670 REM -----End Game---------------------------------------------------------
1680 CLS
1690 PRINT "********************************************************************"
1700 PRINT " The States and Capitals Game - End Game"
1710 PRINT "********************************************************************"
1720 PRINT
1730 PRINT "Thanks for playing!"
1740 PRINT "Keep studying for next time..."
1750 PRINT : PRINT : PRINT : PRINT : PRINT
1760 END
1770 REM -----Data-------------------------------------------------------------
1780 DATA Alabama,Montgomery,Alaska,Juneau,Arizona,Phoenix
1790 DATA Arkansas,Little Rock,California,Sacramento,Colorado,Denver
1800 DATA Connecticut,Hartford,Delaware,Dover,Florida,Tallahassee
1810 DATA Georgia,Atlanta,Hawaii,Honolulu,Idaho,Boise
1820 DATA Illinois,Springfield,Indiana,Indianapolis,Iowa,Des Moines
1830 DATA Kansas,Topeka,Kentucky,Frankfort,Louisiana,Baton Rouge
1840 DATA Maine,Augusta,Maryland,Annapolis,Massachusetts,Boston
1850 DATA Michigan,Lansing,Minnesota,St. Paul,Mississippi,Jackson
1860 DATA Missouri,Jefferson City,Montana,Helena,Nebraska,Lincoln
1870 DATA Nevada,Carson City,New Hampshire,Concord,New Jersey,Trenton
1880 DATA New Mexico,Santa Fe,New York,Albany,North Carolina,Raleigh
1890 DATA North Dakota,Bismarck,Ohio,Columbus,Oklahoma,Oklahoma City
1900 DATA Oregon,Salem,Pennsylvania,Harrisburg,Rhode Island,Providence
1910 DATA South Carolina,Columbia,South Dakota,Pierre,Tennessee,Nashville
1920 DATA Texas,Austin,Utah,Salt Lake City,Vermont,Montpelier
1930 DATA Virginia,Richmond,Washington,Olympia,West Virginia,Charleston
1940 DATA Wisconsin,Madison,Wyoming,Cheyenne
1950 REM Right Replies
1960 DATA Ah jea!
1970 DATA Kick @$$!
1980 DATA Sweeeet!
1990 DATA Ta dow!
2000 DATA You must be Bark-Dogg!
2010 REM Wrong Replies
2020 DATA $#!+
2030 DATA You have to be smarter than the keyboard.
2040 DATA Uh...no
2050 DATA Better luck next time.
2060 DATA Good answer...not.
2070 REM -----End--------------------------------------------------------------
