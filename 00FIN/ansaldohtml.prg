PUSH KEY CLEAR
SELECT NALIZV
DELETE ALL FOR FNAZIV=SPACE(30).OR.PDUG=0
PACK
GO TOP
bobi=FCREATE('ANSALDO.HTM')
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
MM='<body bgcolor="yellow">'
FPUTS(bobi,MM)
MM='<table id="GenTable" border=2>'
FPUTS(bobi,MM)
MM='<tr>  DATUM '+DTOC(DATE())+'  vreme '+TIME()+'</tr>'
FPUTS(bobi,MM)
MM='<tr>'
FPUTS(bobi,MM)
MM='<th>sifra</th>'
FPUTS(bobi,MM)
MM='<th>Naziv</th>'
FPUTS(bobi,MM)
MM='<th>dospelo</th>'
FPUTS(bobi,MM)
MM='</tr>'
FPUTS(bobi,MM)
DO WHILE.NOT.EOF()
   MM='<tr>'
   FPUTS(bobi,MM)
   MM='<td>'+SIFra+'</td>'
   FPUTS(bobi,MM)
   MM='<td>'+SUBSTR(FNAZIV,1,15)+'</td>'
   FPUTS(bobi,MM)
   MM='<td>'+TRANSFORM(PDUG,'99999 999.99')+'</td>'
   FPUTS(bobi,MM)
   MM='</tr>'
   FPUTS(bobi,MM)
   SKIP
ENDDO


MM='</table>'
FPUTS(bobi,MM)
MM='</body>'
FPUTS(bobi,MM)
MM='</html>'
FPUTS(bobi,MM)
FCLOSE(BOBI)

SELECT NALIZV
COPY TO ANSALDO TYPE XL5 FOR FNAZIV<>SPACE(30).AND.PDUG>0 FIELDS SIFRA,FNAZIV,PDUG
GO TOP
POP KEY