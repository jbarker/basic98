10 REM  Jay Barker
20 REM  Date: 11/07/97
30 REM  Purpose: To compute basketball shooting % & total points scored
40 REM  Program Name: TAB-SQR
50 REM  Variable Dictionary
60 REM  N$ = Player's name
70 REM  GM = Field goals made
80 REM  GA = Field goals attempted
90 REM  GP = Field goal %
100 REM TM = Free throws made
110 REM TA = Free throws attempted
120 REM TP = Free throw %
130 REM P  = Total points scored
140 REM
150 PRINT "This program computes basketball shooting"
160 PRINT "percentage and total points scored.": PRINT
170 PRINT "Enter the player's name."
180 INPUT N$
190 WHILE N$ <> "QUIT"
200   PRINT "Enter field goals made."
210   INPUT GM
220   PRINT "Enter field goals attempted."
230   INPUT GA
240   PRINT "Enter free throws made."
250   INPUT TM
260   PRINT "Enter free throws attempted."
270   INPUT TA
280   REM ----------
290   GP = GM / GA * 100
300   TP = TM / TA * 100
310   P = GM * 2 + TM
315   REM ----------
316   PRINT
320   PRINT TAB(1); "Name";
330   PRINT TAB(14); "FGM";
340   PRINT TAB(19); "FGA";
350   PRINT TAB(26); "%";
360   PRINT TAB(40); "FTM";
370   PRINT TAB(45); "FTA";
380   PRINT TAB(52); "%";
390   PRINT TAB(65); "Total Points"
400   PRINT TAB(1); N$;
410   PRINT TAB(14); GM;
420   PRINT TAB(19); GA;
430   PRINT TAB(24); GP;
440   PRINT TAB(40); TM;
450   PRINT TAB(45); TA;
460   PRINT TAB(50); TP;
470   PRINT TAB(70); P
480   PRINT
490   PRINT "Enter the next player's name. (Enter QUIT to end.) "
500   INPUT N$
510 WEND
520 END

