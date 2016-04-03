PUSH KEY CLEAR
mredni=recno()
CLOSE ALL TABLES
USE LD00 EXCLU ALIAS LD IN 0
SELECT LD
GO top
mmesec=mesec
misplata=isplata
IF RECCOUNT()>1
goto mredni
DELETE
PACK
use
ELSE
   goto mredni
   DELETE
   PACK
   use
   USE ld IN 0 EXCLUSIVE
   SELECT ld
   DELETE ALL FOR mesec=mmesec.and.isplata=misplata
   PACK
   USE
   USE ldpod IN 0 EXCLUSIVE 
   SELECT ldpod
   DELETE ALL FOR mesec=mmesec.and.isplata=misplata
   PACK
   USE
   USE lmes IN 0 EXCLUSIVE 
   SELECT lmes
   DELETE ALL FOR mesec=mmesec.and.isplata=misplata
   PACK
   USE
   USE ldprev IN 0 EXCLUSIVE
   SELECT ldprev
   DELETE ALL FOR mesec=mmesec.and.isplata=misplata
   PACK
   USE
   USE lddd IN 0 EXCLUSIVE
   SELECT lddd
   DELETE ALL FOR mesec=mmesec.and.isplata=misplata
   PACK
   USE
ENDIF
CLOSE ALL TABLES
POP KEY
LD.RELEASE
KEYBOARD '{ENTER}'

   