PUSH KEY CLEAR
   PUANAL.GRD0.SetAll("DynamicBackColor", "IIF(ANAL.ZATVAR=' ', RGB(255,255,255), RGB(255,255,255))", "Column")  
   PUANAL.GRD0.ReadOnly=.F.
   PUANAL.GRD0.SetFocus
   PUANAL.Refresh 
POP KEY