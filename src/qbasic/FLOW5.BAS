10 PRINT "Enter the number of items you will purchase."
20 INPUT N
30 C = N * 4.5
40 IF N > 10 THEN C = N * 3.95
50 TX = C * .078
60 TL = C + TX
70 PRINT N; "items at a cost of"; C; "per item, plus tax of"; TX
80 PRINT "would total"; TL; "."
90 END

