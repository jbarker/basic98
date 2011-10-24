10 REM  Jay Barker
20 REM  Date: 02/18/98
30 REM  Purpose: To determine how many of each character are in a message.
40 REM  Program Name: rboard
50 REM  Variable Dictionary
60 REM  RB$ = Reader board string
70 REM  C() = Character array
80 REM  L   = Length of RB$
90 REM  I   = Counter
100 REM A   = ASCII code for each character
110 REM F() = Frequency of each character
120 REM ----- Main Program -----------------------------------------------------
130 CLS : DIM C(127): DIM F(127)
140 GOSUB 190: REM Input data, echo
150 GOSUB 290: REM Process data
160 GOSUB 360: REM Output data
170 END
180 REM ----- Input data ------------------------------------------------------
190 PRINT "Enter your message for the reader board."
200 PRINT "Please type in all CAPS and do not"
210 PRINT "include any commas (,)."
220 INPUT RB$
230 PRINT : PRINT "Your message is:"
240 PRINT RB$
250 PRINT : PRINT "Your message contained:"
260 PRINT
270 RETURN
280 REM ----- Process data ----------------------------------------------------
290 L = LEN(RB$)
300 FOR I = 1 TO L
310   A = ASC(MID$(RB$, I, 1))
320   F(A) = F(A) + 1
330 NEXT I
340 RETURN
350 REM ----- Output data -----------------------------------------------------
360 FOR I = 33 TO 127
370   IF F(I) > 0 THEN PRINT F(I); CHR$(I),
380 NEXT I
390 RETURN
400 REM ----- Program End -----------------------------------------------------

