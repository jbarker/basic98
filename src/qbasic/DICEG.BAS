10 REM  Jay Barker
20 REM  Date: 05/19/98
30 REM  Purpose: Play the game "Beware the One"
40 REM  Program Name: diceg1
50 REM  Variable Dictionary
60 REM  FNR(X) = random number from 1 to X
70 REM    MC = menu choice
80 REM    GS = game score
90 REM     T = turn #
100 REM   N$ = user's name
110 REM   TS = turn score
120 REM    R = roll of dice
130 REM   R$ = risk points response
140 REM  I/X = index/subscript
150 REM N$() = top scorer's name
160 REM  S() = top scores
170 REM   RN = roll number
180 REM -----Main--------------------------------------------------------------
190 KEY OFF: WIDTH 80: CLS
200 RANDOMIZE TIMER
210 DEF FNR (X) = INT(RND(1) * X) + 1
220 GOSUB 1520: REM Load Scores
230 PRINT " Beware the One - Welcome "
240 PRINT
250 PRINT "What is your name?"
260 INPUT N$
270 WHILE MC <> 5
280   CLS
290   GOSUB 680: REM Menu
300   PRINT "Choose a selection, "; N$; "."
310   INPUT MC
320   ON MC GOSUB 420, 820, 1390, 1680
330     REM 420  Instructions
340     REM 820  Game
350     REM 1390 Print Scores
360     REM 1680 Change Player
370 WEND
380 GOSUB 1600: REM Save Scores
390 GOSUB 1820: REM End
400 END
410 REM -----Instructions------------------------------------------------------
420 CLS
430 PRINT "---------------Instructions for Beware the One----------------"
440 PRINT
450 PRINT "**************************************************************"
460 PRINT "* This is a dice game. You will get 5 turns.                 *"
470 PRINT "*                                                            *"
480 PRINT "* During each turn you may roll the die as many times as you *"
490 PRINT "* wish. Each time you roll the die the face value of the die *"
500 PRINT "* will add to your turn score. However, if you roll a '1'    *"
510 PRINT "* your score will become '0' and your turn will end.         *"
520 PRINT "*                                                            *"
530 PRINT "* If your roll is NOT a '1' you can save your accumulated    *"
540 PRINT "* turn points and add them to your game score. This action   *"
550 PRINT "* will end this turn.                                        *"
560 PRINT "*                                                            *"
570 PRINT "* A turn will end with the rolling of a '1' or the banking   *"
580 PRINT "* of your points.                                            *"
590 PRINT "*                                                            *"
600 PRINT "* The top 5 scorers and their game scores will be saved on   *"
610 PRINT "* disk.                                                      *"
620 PRINT "**************************************************************"
630 PRINT
640 PRINT "Press ENTER to continue"
650 INPUT I$
660 RETURN
670 REM -----Menu--------------------------------------------------------------
680 PRINT " Beware the One - Main Menu "
690 PRINT
700 PRINT "1. View the instructions"
710 PRINT
720 PRINT "2. Play the game"
730 PRINT
740 PRINT "3. View top scores"
750 PRINT
760 PRINT "4. Change Player"
770 PRINT
780 PRINT "5. End"
790 PRINT
800 RETURN
810 REM -----Game--------------------------------------------------------------
820 GS = 0
830 FOR T = 1 TO 5
840   GOSUB 930: REM One Turn
850 NEXT T
860 CLS
870 PRINT " Beware the One - Game Score "
880 PRINT
890 PRINT "Game Score:"; GS
900 GOSUB 1230: REM Top Score Check
910 RETURN
920 REM -----One Turn----------------------------------------------------------
930 CLS
940 PRINT
950 TS = 0: RN = 1
960 R$ = "Y"
970 WHILE R$ = "Y"
980   CLS
990   PRINT " Beware the One - Turn"; T; "- Roll"; RN
1000   PRINT
1010   R = FNR(6)
1020   PRINT "You rolled a"; R
1030   IF R = 1 THEN PRINT "Beware the One! Turn Score: 0": GOSUB 1180: RETURN
1040   TS = TS + R: RN = RN + 1
1050   PRINT "Turn Score:"; TS
1060   PRINT "Game Score:"; GS
1070   PRINT
1080   PRINT "Do you want to risk your points and roll again? (Y/N)"
1090   INPUT R$
1100   WHILE R$ <> "Y" AND R$ <> "N"
1110     PRINT "Do you want to risk your points and roll again? (Y/N)"
1120     INPUT R$: WEND
1130 WEND
1140 GS = GS + TS
1150 RETURN
1160 REM -----One--------------------------------------------------------------
1170 RN = 0
1180 PRINT
1190 PRINT "Press ENTER to continue"
1200 INPUT I$
1210 RETURN
1220 REM -----Top Score Check---------------------------------------------------
1230 I = 1
1240 WHILE GS < S(I) AND I < 6
1250   I = I + 1
1260 WEND
1270 FOR X = 5 TO I + 1 STEP -1
1280   N$(X) = N$(X - 1)
1290   S(X) = S(X - 1)
1300 NEXT X
1310 N$(I) = N$
1320 S(I) = GS
1330 IF I < 6 THEN PRINT "Number:"; I; "Best:"; GS; "Points"
1340 PRINT
1350 PRINT "Press ENTER to continue"
1360 INPUT I$
1370 RETURN
1380 REM -----Print Scores------------------------------------------------------
1390 CLS
1400 PRINT " Beware the One - Top Scores "
1410 PRINT
1420 PRINT TAB(1); "Rank"; TAB(7); "Name"; TAB(25); "Score"
1430 PRINT
1440 FOR I = 1 TO 5
1450   PRINT TAB(1); I; TAB(7); N$(I); TAB(25); S(I)
1460 NEXT I
1470 PRINT
1480 PRINT "Press ENTER to continue"
1490 INPUT I$
1500 RETURN
1510 REM -----Load Scores-------------------------------------------------------
1520 F$ = "A:\scores.dat"
1530 OPEN "I", 1, F$
1540 FOR I = 1 TO 5
1550   INPUT #1, N$(I), S(I)
1560 NEXT I
1570 CLOSE 1
1580 RETURN
1590 REM -----Save Scores-------------------------------------------------------
1600 F$ = "A:\scores.dat"
1610 OPEN "O", 1, F$
1620 FOR I = 1 TO 5
1630   WRITE #1, N$(I), S(I)
1640 NEXT I
1650 CLOSE 1
1660 RETURN
1670 REM -----Change Player-----------------------------------------------------
1680 CLS
1690 PRINT " Beware the One - Change Player "
1700 PRINT
1710 PRINT "The current player is "; N$; "."
1720 PRINT
1730 PRINT "Enter new player."
1740 INPUT N$
1750 PRINT
1760 PRINT "The current player is now "; N$; "."
1770 PRINT
1780 PRINT "Press ENTER to continue"
1790 INPUT I$
1800 RETURN
1810 REM -----End---------------------------------------------------------------
1820 PRINT
1830 PRINT "Thanks for playing Beware the One!"
1840 PRINT
1850 REM -----------------------------------------------------------------------

