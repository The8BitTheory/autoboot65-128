#RetroDevStudio.MetaData.BASIC:7169,BASIC V7.0,uppercase,10,10
5 DU$=STR$(PEEK(186))
6 F$="VERMEER 100%"
7 F$=F$+CHR$(DEC("22"))+CHR$(DEC("2C"))
9 FOR X=2 TO LEN(DU$):F$=F$+MID$(DU$,X,1):NEXT

10 A=32768:GRAPHIC0
20 READ D$
22 IF D$="-2" THEN FORX=1TOLEN(F$):POKEA,ASC(MID$(F$,X,1)):A=A+1:NEXT:GOTO 20
26 IF D$="-1" THEN GO64
30 POKE A,DEC(D$):A=A+1:GOTO 20
40 DATA 09,80,5E,FE,C3,C2,CD,38,30
50 DATA 8E,16,D0,20,A3,FD,20,50,FD
60 DATA 20,15,FD,20,5B,FF,58
70 DATA 20,53,E4,20,BF,E3,20,22,E4
80 DATA A2,FB,9A
90 DATA A2,00,BD,41,80,F0,06
100 DATA 20,D2,FF,E8,D0,F5
110 DATA A9,0D,8D,77,02,8D,78,02
120 DATA A9,02,85,C6
130 DATA 4C,74,A4

#        <CR> LOAD"
140 DATA 0D,4C,4F,41,44,22,-2
#         H  E  L  L  O
#145 DATA 48,45,4C,4C,4F
#         "  ,  8
#146 DATA 22,2C,38
#       <CR><CR><CR><CR><CR>RUN<UP><UP><UP><UP><UP><UP><UP>
150 DATA 0D,0D,0D,0D,0D,52,55,4E,91,91,91,91,91,91,91,0,-1
