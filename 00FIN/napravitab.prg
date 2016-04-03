PARAMETERS novatab,origtab
*SET STEP ON 
mupit='CREATE TABLE '+novatab+' LIKE '+origtab
SQLEXEC(1,mupit)
