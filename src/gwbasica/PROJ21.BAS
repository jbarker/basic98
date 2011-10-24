10 REM  Jay Barker
20 REM  Date: 01/20/98
30 REM  Purpose: To make a menu program with four choices
40 REM  Program Name: Proj21
50 REM  Variable Dictionary
60 REM  T$()= CD title array
70 REM  A$()= Artist array
80 REM    MC= Menu choice
90 REM    C$= Continue string
100 REM    N= Number of CD titles and artists
110 REM    C= Loop counter
120 REM    D= Loop counter
130 REM   S$= Temporary storage string
140 REM  S2$= Temporary storage string #2
150 REM   Q$= Artist query string
160 REM    F= Flag
170 REM -----------------------------------------------------------------------
180 CLS : N=25 : MC=0
190 DIM T$(N) : DIM A$(N)
200 GOSUB 330 : REM Read titles and artists
210 WHILE MC<>5
220   GOSUB 430 : REM Print menu
230   INPUT MC : CLS
240   ON MC GOSUB 830,910,1030,1150
250     REM 790  Order of finish
260     REM 870  Sort by title
270     REM 960  Sort by artist
280     REM 1050 Search for an artist
290   IF MC<>5 THEN PRINT : PRINT "Press ENTER to continue" : INPUT C$ : CLS
300 WEND
310 END
320 REM -----------------------------------------------------------------------
330 REM ----- Read titles and artists
340 RESTORE
350 FOR C=1 TO N
360   READ T$(C)
370   READ A$(C)
380 NEXT C
390 RETURN
400 REM -----------------------------------------------------------------------
410 REM ----- Print Menu
420 CLS : PRINT
430 PRINT TAB(20) "The Top 25 Songs and Artists of the Year"
440 PRINT TAB(20) "----------------------------------------"
450 PRINT
460 PRINT TAB(17) "1. View the top 25 songs of the year"
470 PRINT
480 PRINT TAB(17) "2. View the top 25 songs in alphabetical order"
490 PRINT
500 PRINT TAB(17) "3. View the top 25 artists in alphabetcial order"
510 PRINT
520 PRINT TAB(17) "4. Search for an artist"
530 PRINT
540 PRINT TAB(17) "5. End"
550 PRINT : PRINT
560 PRINT TAB(20) "Please select a menu number."
570 RETURN
580 REM -----------------------------------------------------------------------
590 REM ----- Print titles and artists
600 PRINT
610 PRINT "Rank";
620 PRINT TAB(7) "Song Title";
630 PRINT TAB(40) "Artist"
640 PRINT
650 FOR C=1 TO 15
660   PRINT C;
670   PRINT TAB(7) T$(C);
680   PRINT TAB(40) A$(C)
690 NEXT C
700 PRINT : PRINT "Press ENTER to continue" : INPUT C$ : CLS
710 PRINT "Rank";
720 PRINT TAB(7) "Song Title";
730 PRINT TAB(40) "Artist"
740 PRINT
750 FOR C=16 TO N
760   PRINT C;
770   PRINT TAB(7) T$(C);
780   PRINT TAB(40) A$(C)
790 NEXT C
800 RETURN
810 REM -----------------------------------------------------------------------
820 REM ----- Order of Finish
830 PRINT
840 PRINT TAB(10) "The Top 25 Songs and Artists of the Year"
850 PRINT TAB(10) "----------------------------------------"
860 GOSUB 340 : REM Read titles and artists
870 GOSUB 600 : REM Print titles and artists
880 RETURN
890 REM -----------------------------------------------------------------------
900 REM ----- Sort by title
910 PRINT
920 PRINT TAB(10) "The Top 25 Songs of the Year - Alphabetized"
930 PRINT TAB(10) "-------------------------------------------"
940 FOR C=1 TO N-1
950   FOR D=1 TO N-C
960     IF T$(D)>T$(D+1) THEN S$=T$(D):T$(D)=T$(D+1):T$(D+1)=S$:S2$=A$(D):A$(D)=A$(D+1):A$(D+1)=S2$
970   NEXT D
980 NEXT C
990 GOSUB 600 : REM Print titles and artisits
1000 RETURN
1010 REM -----------------------------------------------------------------------
1020 REM ----- Sort by artist
1030 PRINT
1040 PRINT TAB(10) "The Top 25 Artists of the Year - Alphabetized"
1050 PRINT TAB(10) "---------------------------------------------"
1060 FOR C=1 TO N-1
1070   FOR D=1 TO N-C
1080     IF A$(D)>A$(D+1) THEN S$=T$(D):T$(D)=T$(D+1):T$(D+1)=S$:S2$=A$(D):A$(D)=A$(D+1):A$(D+1)=S2$
1090   NEXT D
1100 NEXT C
1110 GOSUB 600 : REM Print titles and artisits
1120 RETURN
1130 REM -----------------------------------------------------------------------
1140 REM ----- Search for an artist
1150 PRINT
1160 PRINT TAB(10) "The Top 25 Artists of the Year - Search"
1170 PRINT TAB(10) "---------------------------------------"
1180 PRINT
1190 GOSUB 340 : REM Read titles and artists
1200 PRINT "What artist are you searching for?" : INPUT Q$
1210 F=0
1220 FOR C=1 TO N
1230   IF Q$=A$(C) THEN PRINT A$(C);" had the number";C;"song, ";T$(C);".":F=1
1240 NEXT C
1250 IF F=0 THEN PRINT Q$;" did not perform a top 25 song this year."
1260 RETURN
1270 REM -----------------------------------------------------------------------
1280 REM ----- Data
1290 DATA You Are a Character,String & the Math Police
1300 DATA You Move Me,Joy Stick
1310 DATA Telephone Line,"Modems, The"
1320 DATA Where Did You Go?,Del Eatt
1330 DATA Get It in Order,Bub L. Sort
1340 DATA Saving It for You,Floppy & the Disks
1350 DATA Shapes of Things,"Templates, The"
1360 DATA Loop Da Loop,"4 Nexts, The"
1370 DATA A Thing of the Past,Floppy & the Disks
1380 DATA A Place of My Own,Webb Page
1390 DATA Some Day My Prints Will Come,Lazer & the Jets
1400 DATA "You Cheated, You Lied",Criss Cross & the Doublecrossers
1410 DATA Hardcopy,Artist Formerly Known As Prints
1420 DATA Losing My Memory,R.A.M.
1430 DATA GOTO is a 4 Letter Word,Cursor & the Flashes of Light
1440 DATA Every Byte You Take,String & the Math Police
1450 DATA Make Me Yours,"4 Matts, The"
1460 DATA Bit By Bit,Mike Rochip & the Memories
1470 DATA Softcopy,"Monitors, The"
1480 DATA Cheap Shoes,Penny Loafer
1490 DATA We've Got a Plan,Flo Chart & Al Gorithm
1500 DATA Seahawk Blues,Les Wynns
1510 DATA Array of Hope,"Subscripts, The"
1520 DATA Lazy Day,Penny Loafer
1530 DATA Return to Sender,"Subroutines, The"
1540 REM
