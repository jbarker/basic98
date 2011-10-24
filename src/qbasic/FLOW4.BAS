10 PRINT "Enter three numbers separated by commas (,)"
20 PRINT "And this program will determine if a tringle could"
30 PRINT "be formed with lenghts of those numbers."
40 INPUT A, B, C
50 IF A + B <= C OR A + C <= B OR B + C <= A THEN PRINT "Not a triangle" ELSE PRINT "Triangle"
60 END

