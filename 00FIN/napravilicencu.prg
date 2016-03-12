PARAMETERS mfirma,mpib
mftpsalji=mfirma+'.txt'
FIDAT=FCREATE(mftpsalji)
mm=mfirma+';'+mpib+';'+DTOC(date())+';'
FPUTS(fidat,mm)
FCLOSE(fidat)