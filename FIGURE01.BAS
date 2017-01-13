10 CLS
20 COLOR 2, 0
30 PRINT "ZA PRISTUP U PROGRAM UNESITE TRAZENE PODATKE"
40 PRINT "IME "
50 FOR I = 1 TO 20
60 PRINT TAB(I);
70 NEXT I
80 INPUT A$
90 PRINT "MATICNI BROJ"
100 FOR I = 1 TO 20
110 PRINT TAB(I);
120 NEXT I
130 INPUT B$
140 PRINT "BROJ LICNE KARTE"
150 FOR I = 1 TO 20
160 PRINT TAB(I);
170 NEXT I
180 INPUT C$
190 IF A$ <> "VLADIMIR" THEN GOTO 2090
200 IF B$ <> "0612984730026" THEN GOTO 2090
210 IF C$ <> "172101" THEN GOTO 2090
220 CLS
225 COLOR 2, 0
230 D$ = "L30CDEFF "
240 PLAY D$
250 PRINT "==============FIGURE=========================================================== "
260 PRINT "==DOBRODOSLI U PROGRAM KOJI VAM OMOGUCAVA=========================30.01.1999.== "
270 PRINT "==DA IZRACUNATE POVRSINU,OBIM I ZAPREMINU====================================== "
280 PRINT "==IZABRANIH FIGURA I GEOMETRIJSKIH TELA======================================== "
290 PRINT "=====KVADRAT=================================================================== "
300 PRINT "=====PRAVOUGAONIK============================================================== "
310 PRINT "=====TROUGAO=================================================================== "
320 PRINT "=====KOCKA===================================================================== "
330 PRINT "=====KVADAR==================================================================== "
340 PRINT "=====KRUG====================================================================== "
350 PRINT "=====VALJAK==================================================================== "
360 PRINT "=====KUPA====================================================================== "
370 PRINT "=====LOPTA============================================Autor:Vladimir Djedovic== "
380 PRINT "==UNESITE NAZIV FIGURE========================================================= "
390 INPUT A$
400 IF A$ = "KVADRAT" THEN BEEP: GOTO 510
410 IF A$ = "PRAVOUGAONIK" THEN BEEP: GOTO 660
420 IF A$ = "TROUGAO" THEN BEEP: GOTO 820
430 IF A$ = "KOCKA" THEN BEEP: GOTO 990
440 IF A$ = "KVADAR" THEN BEEP: GOTO 1160
450 IF A$ = "KRUG" THEN BEEP: GOTO 1340
460 IF A$ = "VALJAK" THEN BEEP: GOTO 1510
470 IF A$ = "KUPA" THEN BEEP: GOTO 1700
480 IF A$ = "LOPTA" THEN BEEP: GOTO 1900
490 IF A$ = "EXIT" THEN BEEP: END
500 GOTO 10
510 CLS
520 PRINT "-KVADRAT------------------------------------------------------------------"
530 PRINT "-UNESITE STRANICU KVADRATA U CENTIMETRIMA---------------------------------"
540 INPUT A
550 PRINT "O=4*A"
560 PRINT "O= 4 *"; A
570 PRINT "OBIM="; A * 4; "cm"
580 PRINT "P=A*A"
590 PRINT "P="; A; "*"; A
600 PRINT "POVRSINA="; A * A; "cm*cm                                                 "
610 COLOR 21, 0
620 PRINT "IZLAZ (Y/N)"
630 INPUT A$
640 IF A$ = "N" THEN GOTO 220
650 COLOR 2, 0: END
660 CLS
670 PRINT "-PRAVOUGAONIK-------------------------------------------------------------"
680 PRINT "-UNESITE STRANICE PRAVOUGAONIKA A i B U CENTIMETRIMA----------------------"
690 INPUT A, B
700 PRINT "O=2*(A+B)"
710 PRINT "O= 2 * ("; A; "+"; B; ")"
720 PRINT "O= 2 *"; A + B
730 PRINT "OBIM="; 2 * (A + B); " cm"
740 PRINT "P=A*B"
750 PRINT "P="; A; "*"; B
760 PRINT "POVRSINA="; A * B; "cm*cm"
770 COLOR 21, 0
780 PRINT "IZLAZ (Y/N)"
790 INPUT A$
800 IF A$ = "N" THEN GOTO 220
810 COLOR 2, 0: END
820 CLS
830 PRINT "-TROUGAO------------------------------------------------------------------"
840 PRINT "-UNESITE STRANICE TROUGLA A,B,C U CENTIMETRIMA----------------------------"
845 GOTO 850
846 PRINT "STRANICE NE ZAKLAPAJU TROUGAO UNESITE IH PONOVO"
848 INPUT A, B, C
849 IF A < 0 OR B < 0 OR C < 0 THEN GOTO 846
850 S = (A + B + C) / 2
850 P = S * (S - A) * (S - B) * (S - C)
850 IF P <= 0 THEN GOTO 846
851 PRINT "O=A+B+C"
852 PRINT "O ="; A; "+"; B; "+"; C
853 PRINT "OBIM="; A + B + C; "cm"
854 PRINT "P=SQR(((A+B+C)/2)*(((A+B+C)/2)-A)*(((A+B+C)/2)-B)*(((A+B+C)/2)-C))"
855 PRINT "P = SQR ( ( ("; A; "+"; B; "+"; C; ") / 2 ) * ( ( ("; A; "+"; B; "+"; C; ") / 2 ) -"; A; ") * ( ( ("; A; "+"; B; "+"; C; ") / 2 )-"; B; "* ( ( ("; A; "+"; B; "+"; C; ") / 2 ) -"; C; ") )"
856 PRINT "P = SQR ( ("; A + B + C; "/ 2 ) * ( ("; A + B + C; "/ 2 ) -"; A; ") * ( ("; A + B + C; "/ 2 ) -"; B; ") * ( ( "; A + B + C; " / 2) - "; C; ")"
857 PRINT "P = SQR ("; (A + B + C) / 2; "* ("; (A + B + C) / 2; "- A ) * ("; (A + B + C) / 2; "- B ) * ("; (A + B + C) / 2; "- C ) )"
858 PRINT "P = SQR ("; (A + B + C) / 2; "*"; ((A + B + C) / 2) - A; "*"; ((A + B + C) / 2) - B; "*"; ((A + B + C) / 2); ")"
859 PRINT "P = SQR ("; ((A + B + C) / 2) * (((A + B + C) / 2) - A) * (((A + B + C) / 2) - B) * (((A + B + C) / 2) - C); ")"
860 PRINT "POVRSINA="; SQR(((A + B + C) / 2) * (((A + B + C) / 2) - A) * (((A + B + C) / 2) - B) * (((A + B + C) / 2) - C)); " cm*cm"
870 S = (A + B + C) / 2
900 P = S * (S - A) * (S - B) * (S - C)
910 G = SQR(P)
920 E = G + .005
930 F = E * 100
931 H = INT(F)
932 J = H / 100
933 PRINT J; "cm*cm"
940 COLOR 21, 0
950 PRINT "IZLAZ (Y/N)"
960 INPUT A$
970 IF A$ = "N" THEN GOTO 220
980 COLOR 2, 0: END
990 CLS
1000 PRINT "-PARALELOGRAM-------------------------------------------------------------"
1010 PRINT "-DA LI RACUNATE ZA 1)ROMB 2)OBICAN PARALELOGRAM---------------------------"
1020 INPUT A
1030 IF A = 1 THEN GOTO 1050
1040 IF A = 2 THEN GOTO 1260
1050 CLS
1060 PRINT "-JEDNAKOSTRANICAN PARALELOGRAM (ROMB)-------------------------------------"
1070 PRINT "-UNESITE OBADVE DIJAGONALE U CENTIMETRIMA---------------------------------"
1080 INPUT A, B
1090 PRINT "O=4*A"
1100 PRINT "O=4*SQR((D1/2)*(D1/2)+(D2/2)*(D2/2))"
1110 PRINT "O= 4 * SQR ( ("; A; "/ 2 ) * ("; A; "/ 2 ) + ("; B; "/ 2 ) * ("; B; "/ 2 ) )"
1120 PRINT "O= 4 * SQR ( ("; A / 2; "*"; A / 2; "+"; B / 2; "*"; B / 2; ") )"
1130 PRINT "O= 4 * SQR ("; (A / 2) * (A / 2); "+"; (B / 2) * (B / 2); ")"
1140 PRINT "O= 4 * SQR ("; (A / 2) * (A / 2) + (B / 2) * (B / 2); ")"
1150 PRINT "O= 4 *"; SQR((A / 2) * (A / 2) + (B / 2) * (B / 2))
1160 PRINT "OBIM="; 4 * SQR((A / 2) * (A / 2) + (B / 2) * (B / 2)); "cm"
1170 PRINT "P=(D1*D2)/2"
1180 PRINT "P= ("; A; "*"; B; ") / 2"
1190 PRINT "P="; A * B; "/ 2"
1200 PRINT "POVRSINA="; (A * B) / 2; "cm*cm"
1210 COLOR 21, 0
1220 PRINT "IZLAZ (Y/N)"
1230 INPUT A$
1240 IF A$ = "N" THEN GOTO 220
1250 COLOR 2, 0: END
1260 CLS
1270 PRINT "-PARALELOGRAM-------------------------------------------------------------"
1280 PRINT "-UNESITE STRANICE A,B i VISINU U CENTIMETRIMA-----------------------------"
1290 INPUT A, B, C
1300 PRINT "O=2*A+2*B"
1310 PRINT "O= 2 *"; A; "+ 2 *"; B
1320 PRINT "O="; 2 * A; "+"; 2 * B
1330 PRINT "OBIM="; 2 * A + 2 * B; cm
1340 PRINT "P=A*h"
1350 PRINT "P="; A; "*"; C
1360 PRINT "POVRSINA="; A * C; cm * cm
1370 COLOR 21, 0
1380 PRINT "IZLAZ (Y/N)"
1390 INPUT A$
1400 IF A$ = "N" THEN GOTO 220
1410 COLOR 2, 0: END
990 CLS
1000 PRINT "-KOCKA--------------------------------------------------------------------"
1010 PRINT "-UNESITE STRANICU KOCKE U CENTIMETRIMA------------------------------------"
1020 INPUT A
1030 PRINT "P=(A*A)*6"
1040 PRINT "P= ("; A; "*"; A; ") * 6"
1050 PRINT "P="; A * A; "* 6"
1060 PRINT "POVRSINA="; (A * A) * 6; "cm*cm"
1070 PRINT "V=A*A*A"
1080 PRINT "V="; A; "*"; A; "*"; A
1090 PRINT "V="; A * A; "*"; A
1100 PRINT "ZAPREMINA="; A * A * A; "cm*cm*cm"
1110 COLOR 21, 0
1120 PRINT "IZLAZ (Y/N)"
1130 INPUT A$
1140 IF A$ = "N" THEN GOTO 220
1150 COLOR 2, 0: END
1160 CLS
1170 PRINT "-KVADAR-------------------------------------------------------------------"
1180 PRINT "-UNESITE STRANICE KVADRA A B i C U CENTIMETRIMA---------------------------"
1190 INPUT A, B, C
1200 PRINT "P=(A*B+A*C+B*C)*2"
1210 PRINT "P= ("; A; "*"; B; "+"; A; "*"; C; "+"; B; "*"; C; ") * 2"
1220 PRINT "P= ("; A * B; "+"; A * C; "+"; B * C; ") * 2"
1230 PRINT "P="; A * B + A * C + B * C; "* 2"
1240 PRINT "POVRSINA="; (A * B + A * C + B * C) * 2; "cm*cm"
1250 PRINT "V=A*B*C"
1260 PRINT "V="; A; "*"; B; "*"; C
1270 PRINT "V="; A * B; "*"; C
1280 PRINT "ZAPREMINA="; A * B * C; "cm*cm*cm"
1290 COLOR 21, 0
1300 PRINT "IZLAZ (Y/N)"
1310 INPUT A$
1320 IF A$ = "N" THEN GOTO 220
1330 COLOR 2, 0: END
1331 CLS
1332 PRINT "-PIRAMIDA-----------------------------------------------------------------"
1333 PRINT "-DA LI ZELITE PRAVILNU PIRAMIDU SA:"
1334 PRINT "-1) TROUGAO U OSNOVI"
1335 PRINT "-2) CETVOROUGAO U OSNOVI"
1336 PRINT "-3) SESTOUGAO U OSNOVI"
1337 INPUT A$
1338 IF A$ = 1 THEN GOTO 1342
1339 IF A$ = 2 THEN GOTO
1340 IF A$ = 3 THEN GOTO
1341 GOTO 1331
1342 CLS
1343 PRINT "-PIRAMIDA SA PRAVILNIM TROUGLOM U OSMOVI----------------------------------"
1344 PRINT "-PODATKE KOJE IMATE UNESITE, ZA OSTALE UPISITE X--------------------------"
1345 PRINT "OSNOVNA STRANICA a="; INPUT A
1346 PRINT "VISINA PIRAMIDE H=";INPUT B
1347 PRINT "BOCNA STRANICA S=";INPUT C
1348 PRINT "VISINA BOCNE STRANICE h=";INPUT D
1349 PRINT "POLUPRECNIK UPISANOG KRUGA OSNOVE r="INPUT E
1340 CLS
1350 PRINT "-KRUG---------------------------------------------------------------------"
1360 PRINT "-UNESITE POLUPRECNIK KRUGA U CENTIMETRIMA---------------------------------"
1370 INPUT A
1380 PRINT "O=2*A*(22/7)"
1390 PRINT "O= 2 *"; A; "* ( 22 / 7 )"
1400 PRINT "O="; 2 * A; "*"; (22 / 7)
1410 PRINT "OBIM="; 2 * A * (22 / 7); "cm"
1420 PRINT "P=(A*A)*(22/7)"
1430 PRINT "P= ("; A; "*"; A; ") * ( 22 / 7 )"
1440 PRINT "P="; A * A; " * "; 22 / 7
1450 PRINT "POVRSINA="; (A * A) * (22 / 7); "cm*cm"
1460 COLOR 21, 0
1470 PRINT "IZLAZ (Y/N)"
1480 INPUT A$
1490 IF A$ = "N" THEN GOTO 220
1500 COLOR 2, 0: END
1510 CLS
1520 PRINT "-VALJAK------------------------------------------------------------------"
1530 PRINT "-UNESITE POLUPRECNIK OSNOVE I VISINU VALJKA U CENTIMETRIMA---------------"
1540 INPUT A, B
1550 PRINT "P=2*A*(22/7)*(A+B)"
1560 PRINT "P= 2 *"; A; "*(22/7)*("; A; "+"; B; ")"
1570 PRINT "P="; 2 * A; "*"; 22 / 7; "*"; A + B
1580 PRINT "P="; (2 * A) * (22 / 7); "*"; A + B
1590 PRINT "POVRSINA="; 2 * A * (22 / 7) * (A + B); "cm*cm"
1600 PRINT "V=(A*A)*(22/7)*B"
1610 PRINT "V= ("; A; "*"; A; ") * ( 22 / 7 ) *"; B
1620 PRINT "V="; A * A; "*"; 22 / 7; "*"; B
1630 PRINT "V="; (A * A) * (22 / 7); "*"; B
1640 PRINT "ZAPREMINA="; (A * A) * (22 / 7) * B; "cm*cm*cm"
1650 COLOR 21, 0
1660 PRINT "IZLAZ (Y/N)"
1670 INPUT A$
1680 IF A$ = "N" THEN GOTO 220
1690 COLOR 2, 0: END
1700 CLS
1710 PRINT "-KUPA--------------------------------------------------------------------"
1720 PRINT "-UNESITE POLUPRECNIK OSNOVE I VISINU KUPE U CENTIMETRIMA-----------------"
1730 INPUT A, B
1740 PRINT "P=A*(22/7)*(A+(SQR(A*A+B*B)))"
1750 PRINT "P="; A; "* (22 / 7) * ("; A; "+ ( SQR("; A; "*"; A; "+"; B; "*"; B; ") ) )"
1760 PRINT "P="; A; " *"; (22 / 7); "* ("; A; "+ ( SQR ("; A * A; "+"; B * B; ") ) )"
1770 PRINT "P="; A * (22 / 7); "("; A; "+ ( SQR ("; A * A + B * B; ") ) )"
1780 PRINT "P="; A * (22 / 7); "*"; A + (SQR(A * A + B * B))
1790 PRINT "POVRSINA="; A * (22 / 7) * (A + (SQR(A * A + B * B))); "cm*cm"
1800 PRINT "V=1/3*(A*A)*(22/7)*B"
1810 PRINT "V= 1 / 3 * ("; A; "*"; A; ") * ( 22 / 7 ) * "; B
1820 PRINT "V="; 1 / 3; "*"; A * A; "*"; 22 / 7; "*"; B
1830 PRINT "V="; 1 / 3 * (A * A); "*"; (22 / 7) * B
1840 PRINT "ZAPREMINA="; 1 / 3 * (A * A) * (22 / 7) * B; "cm*cm*cm"
1850 COLOR 21, 0
1860 PRINT "IZLAZ (Y/N)"
1870 INPUT A$
1880 IF A$ = "N" THEN GOTO 220
1890 COLOR 2, 0: END
1900 CLS
1910 PRINT "-LOPTA-------------------------------------------------------------------"
1920 PRINT "-UNESITE POLUPRECNIK LOPTE U CENTIMETRIMA--------------------------------"
1930 INPUT A
1940 PRINT "P=4*(A*A)*(22/7)"
1950 PRINT "P= 4 * ("; A; "*"; A; ")*(22/7)"
1960 PRINT "P= 4 *"; A * A; "*"; 22 / 7
1970 PRINT "P="; 4 * A * A; "*"; 22 / 7; ""
1980 PRINT "POVRSINA="; 4 * (A * A) * (22 / 7); "cm*cm"
1990 PRINT "V=(4/3)*(A*A*A)*(22/7)"
2000 PRINT "V= ( 4 / 3 ) * ("; A; "*"; A; "*"; A; ") * (22/7)"
2010 PRINT "V="; 4 / 3; "*"; A * A * A; "*"; 22 / 7
2020 PRINT "V="; 4 / 3 * (A * A * A); "*"; 22 / 7
2030 PRINT "ZAPREMINA="; (4 / 3) * (A * A * A) * (22 / 7); "cm*cm*cm"
2040 COLOR 21, 0
2050 PRINT "IZLAZ (Y/N)"
2060 INPUT A$
2070 IF A$ = "N" THEN GOTO 220
2080 COLOR 2, 0: END
2090 COLOR 21, 0
2100 PRINT "ZAO MI JE ALI PRISTUP IMA SAMO AUTOR"
2110 COLOR 2, 0
2120 END

