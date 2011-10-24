10 REM  Jay Barker
20 REM  Date: 05/27/98
30 REM  Purpose: Make graphical designs
40 REM  Program Name: graphs2
50 REM  Variable Dictionary
60 REM  -- No Variables --
70 REM -----------------------------------------------------------------------
80 CLS : SCREEN 1,0 : COLOR 15,0
90 REM -----Triangle-----
100 LINE (50,10)-(80,40),1
110 LINE (80,40)-(20,40),1
120 LINE (20,40)-(50,10),1
130 REM -----Rectangle-----
140 LINE (20,50)-(80,90),2,B
150 REM -----Parallelogram-----
160 LINE (40,110)-(100,110),3
170 LINE (20,150)-(80,150),3
180 LINE (20,150)-(40,110),3
190 LINE (80,150)-(100,110),3
200 REM -----Circle-----
210 CIRCLE (210,30),25,2
220 REM -----Circle2-----
230 CIRCLE (210,80),25,2
240 PAINT (215,85),2,2
250 REM -----Square-----
260 LINE (190,130)-(260,180),1,B
270 PAINT (195,135),1,1
280 REM -----------------------------------------------------------------------
