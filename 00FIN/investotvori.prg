PUSH KEY CLEAR
   invest.GRD0.SetAll("DynamicBackColor", "IIF(ANALP.ZATVAR=' ', RGB(255,255,255), RGB(255,255,255))", "Column")  
   invest.GRD0.ReadOnly=.F.
   invest.GRD0.SetFocus
   invest.Refresh 
POP KEY