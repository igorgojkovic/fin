PARAMETERS AODAKLE
PUSH KEY CLEAR
CLOSE ALL TABLES
USE FIRMA IN 0
USE LDPARAM IN 0
SELECT LDPARAM
mredispl=redispl  
USE LDPOD00 IN 0 ALIAS LDPOD
SELECT LDPOD
SET ORDER TO 1
USE LDREK EXCLU IN 0
SELECT LDREK
ZAP
FOR I=1 TO 34
   APPEND BLANK
NEXT   
select LDREK
GO TOP

SET PROCEDURE TO LDREK

   DO REKUNESI WITH  1,'24.    ',' BRUTO ZARADA              ','L '
   DO REKUNESI WITH  2,'22.    ',' POREZ NA ZARADE           ',' '
   DO REKUNESI WITH  3,'26.    ',' DOPRINOSI NA TERET RADNIKA',' '
   DO REKUNESI WITH  4,'21.    ',' NETO ZARADA               ','L'
   DO REKUNESI WITH  5,'26.    ',' DOPRINOSI RADNIKA         ',' '
   DO REKUNESI WITH  6,'27.    ','   PIO                     ',' '
   DO REKUNESI WITH  7,'28.    ','   ZDRAVSTVENO             ',' '
   DO REKUNESI WITH  8,'29.    ','   ZAPOSLJAVANJE           ','L'
   DO REKUNESI WITH  9,'30.    ',' DOPRINOSI POSLODAVCA      ',' '
   DO REKUNESI WITH 10,'31.    ','   PIO                     ',' '
   DO REKUNESI WITH 11,'32.    ','   ZDRAVSTVENO             ',' '
   DO REKUNESI WITH 12,'33.    ','   ZAPOSLJAVANJE           ','L'
   DO REKUNESI WITH 13,'25.    ',' POREZ NA FOND ZARADA      ',' '
   DO REKUNESI WITH 14,'52.    ',' DOP ZA BENEFIC.STAZ       ','L'                              
   DO REKUNESI WITH 15,'34.    ',' DOPRINOS KOMORI JUGOSLAV. ',' '
   DO REKUNESI WITH 16,'35.    ',' DOPRINOS KOMORI REPUBLIKE ',' '
   DO REKUNESI WITH 17,'36.    ',' DOPRINOS KOMORI REGIONA   ','L'
   DO REKUNESI WITH 18,'153.   ',' NAKNADA PREVOZA           ','L'
   DO REKUNESI WITH 19,'       ','      OBUSTAVE             ',' '
   DO REKUNESI WITH 20,'38.    ',' KREDITI                   ',' '
   DO REKUNESI WITH 21,'39.    ',' AKONTACIJA                ',' '
   DO REKUNESI WITH 22,'40.    ',' SOLIDARNOST               ',' '
   DO REKUNESI WITH 23,'41.    ',' SAMODOPRINOS              ',' '
   DO REKUNESI WITH 24,'42.    ',' SINDIKAT 1                ',' '
   DO REKUNESI WITH 25,'43.    ',' SINDIKAT 2                ',' '
   DO REKUNESI WITH 26,'44.    ',' ALIMENTACIJA              ',' '
   DO REKUNESI WITH 27,'45.    ',' KASA                      ',' '
   DO REKUNESI WITH 28,'46.    ',' KASA RATA                 ',' '
   DO REKUNESI WITH 29,'154.   ',' OBUSTAVA PREVOZA          ','L'
   DO REKUNESI WITH 30,'47.    ',' OSTALE OBUSTAVE 1         ','L'
   DO REKUNESI WITH 31,'48.    ',' OSTALE OBUSTAVE 2         ','L'
   DO REKUNESI WITH 32,'49.    ',' OSTALE OBUSTAVE 3         ','L'
   DO REKUNESI WITH 33,'50.    ',' UKUPNE OBUSTAVE           ','L'
   DO REKUNESI WITH 34,'51.    ',' ZA ISPLATU                ','L'               

   DO REKPUNI              

   GO TOP
                
SET PROCEDURE TO  
IF AODAKLE=0 
   CLOSE ALL TABLES            
ENDIF
POP KEY