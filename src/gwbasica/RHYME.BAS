10 REM  Jay Barker
20 REM  Date: 09/23/97
30 REM  Purpose: To create a nursery rhyme Mad-Lib
40 REM  Program Name: Ryhme
50 REM  Variable Dictionary
60 REM  A$,B$,C$,D$,E$,F$,G$
70 REM  All are words defined when the program is run.
80 PRINT "Mary had a little lamb - spoof"
90 REM
100 PRINT "Answer the following questions to create"
110 PRINT "your own nursery rhyme Mad-Lib.
120 PRINT "What is your first name?"
130 INPUT A$
140 PRINT "What is your favorite kind of animal?"
150 INPUT C$
160 PRINT "Enter an adjective."
170 INPUT B$
180 PRINT "What is your favorite possession?"
190 INPUT D$
200 PRINT "What's your favorite color?"
210 INPUT E$
220 PRINT "Enter a noun."
230 INPUT F$
240 PRINT "Enter a verb (one that rhymes with ";F$;" if possible)."
250 INPUT G$
260 PRINT A$;" had a ";B$;" ";C$
270 PRINT "whose ";D$;" was ";E$;" as ";F$;","
280 PRINT "and everywhere that ";A$;" went"
290 PRINT "the ";C$;" was sure to ";G$;"."
300 END
