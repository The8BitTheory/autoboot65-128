#RetroDevStudio.MetaData.BASIC:7169,BASIC V7.0,uppercase,10,10
10 GRAPHIC 0:DU=PEEK(186)
20 PRINT ""
30 PRINT USING "=######################################";"GOODWELL'S FAVORITE GAMES"
40 PRINT:PRINT
50 PRINT "A - ASSEMBLOIDS 2013"
60 PRINT "S - STRAIGHT-UP"
70 PRINT
80 PRINT "ENTER YOUR CHOICE (F1=CREDITS, X=EXIT)"

90 CHAR 1,1,22
100 PRINT USING ">######################################";"BY THE 8-BIT THEORY"
110 PRINT
120 PRINT USING ">######################################";"PLEASE SUBSCRIBE";

130 GETKEY I$:IF I$="X"THEN END
135 IF I$=CHR$(64) THEN 162
140 IF I$="A" THEN F$="ASSEMBLOIDS2013":GOTO 170
150 IF I$="S" THEN F$="STRAIGHT-UP":GOTO 170
160 GOTO 130

162 IF NOT CL THEN CL=-1:BLOAD "YOUTUBE.QR",B0,U(DU)

#168 SYS DEC("AC6"),40,DEC("80"),4
168 PRINT"":SYS DEC("AC6"),40,0,4
169 CHAR 1,1,20,"PRESS KEY":GETKEY I$:GOTO 20




170 PRINT:PRINT"LOADING "F$"!!!"
180 DU$=STR$(DU)
190 F$=F$+CHR$(DEC("22"))+CHR$(DEC("2C"))
200 FOR X=2 TO LEN(DU$):F$=F$+MID$(DU$,X,1):NEXT

210 A=32768
220 READ D$
230 IF D$="-2"THEN FOR X=1 TO LEN(F$):POKE A,ASC(MID$(F$,X,1)):A=A+1:NEXT:GOTO 220
240 IF D$="-1"THEN GO64

250 POKE A,DEC(D$):A=A+1:GOTO 220
260 DATA 09,80,5E,FE,C3,C2,CD,38,30
270 DATA 8E,16,D0,20,A3,FD,20,50,FD
280 DATA 20,15,FD,20,5B,FF,58
290 DATA 20,53,E4,20,BF,E3,20,22,E4
300 DATA A2,FB,9A
310 DATA A2,00,BD,41,80,F0,06
320 DATA 20,D2,FF,E8,D0,F5
330 DATA A9,0D,8D,77,02,8D,78,02
340 DATA A9,02,85,C6
350 DATA 4C,74,A4
360 DATA 0D,4C,4F,41,44,22,-2
370 DATA 0D,0D,0D,0D,0D,52,55,4E,91,91,91,91,91,91,91,0,-1