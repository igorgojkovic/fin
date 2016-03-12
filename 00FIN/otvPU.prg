PUSH KEY CLEAR
   PU.GRD0.SetAll("DynamicBackColor", "IIF(PU.ZATVAR=' ', RGB(255,255,255), RGB(255,255,255))", "Column")  
   PU.GRD0.ReadOnly=.F.
   PU.GRD0.SetFocus
   PU.Refresh 
POP KEY