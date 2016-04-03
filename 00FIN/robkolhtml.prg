PUSH KEY CLEAR
SELECT rob
SET ORDER TO 2
GO TOP
bobi=FCREATE('robkol.HTM')
MM='<html>'
FPUTS(bobi,MM)
MM='<head>'
FPUTS(bobi,MM)
MM='<title>'
FPUTS(bobi,MM)
MM='</title>'
FPUTS(bobi,MM)
MM='</head>'
FPUTS(bobi,MM)
MM='<body bgcolor="green">'
FPUTS(bobi,MM)
MM='<table id="GenTable" border=1>'
FPUTS(bobi,MM)
MM='<tr>  DATUM '+DTOC(DATE())+'  vreme '+TIME()+'</tr>'
FPUTS(bobi,MM)
MM='<tr>'
FPUTS(bobi,MM)
MM='<th>sifra</th>'
FPUTS(bobi,MM)
MM='<th>Naziv</th>'
FPUTS(bobi,MM)
MM='<th>stanje</th>'
FPUTS(bobi,MM)
MM='</tr>'
FPUTS(bobi,MM)
DO WHILE.NOT.EOF()
   IF kol>0
      MM='<tr>'
      FPUTS(bobi,MM)
      MM='<td>'+rsif+'</td>'
      FPUTS(bobi,MM)
      MM='<td>'+SUBSTR(NAZ,1,15)+'</td>'
      FPUTS(bobi,MM)
      MM='<td>'+TRANSFORM(kol,'99999 999.99')+'</td>'
      FPUTS(bobi,MM)
      MM='</tr>'
      FPUTS(bobi,MM)
   endif
   SKIP
ENDDO


MM='</table>'
FPUTS(bobi,MM)
MM='</body>'
FPUTS(bobi,MM)
MM='</html>'
FPUTS(bobi,MM)
FCLOSE(BOBI)

SELECT ROB
GO TOP
COPY TO ROBKOL TYPE XL5 FOR KOL>0 FIELDS RSIF,NAZ,KOL
POP KEY