PUSH KEY CLEAR
   investP.GRD0.SetAll("DynamicBackColor", "IIF(ANALP.ZATVAR=' ', RGB(255,255,255), RGB(255,255,255))", "Column")  
   investP.GRD0.ReadOnly=.F.
   investP.GRD0.SetFocus
   investP.Refresh 
POP KEY