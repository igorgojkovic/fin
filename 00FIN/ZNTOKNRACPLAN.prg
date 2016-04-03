PARAMETERS POLJE

      SELECT BTG
      SET ORDER TO 1
      GO TOP
      SEEK '3002'
      NN3002=&POLJE
      SEEK '3003'
      NN3003=&POLJE
      SEEK '3004'
      NN3004=&POLJE

      SEEK '3006'
      NN3006=&POLJE
      SEEK '3007'
      NN3007=&POLJE
      SEEK '3008'
      NN3008=&POLJE
      SEEK '3009'
      NN3009=&POLJE
      SEEK '3010'
      NN3010=&POLJE
*-----------------------
      SEEK '3014'
      NN3014=&POLJE
      SEEK '3015'
      NN3015=&POLJE
      SEEK '3016'
      NN3016=&POLJE
      SEEK '3017'
      NN3017=&POLJE
      SEEK '3018'
      NN3018=&POLJE
*------------------------
      SEEK '3020'
      NN3020=&POLJE
      SEEK '3021'
      NN3021=&POLJE
      SEEK '3022'
      NN3022=&POLJE

      SEEK '3026'
      NN3026=&POLJE
      SEEK '3027'
      NN3027=&POLJE
      SEEK '3028'
      NN3028=&POLJE

      SEEK '3029'
      NN3029=&POLJE

      SEEK '3030'
      NN3030=&POLJE

      SEEK '3032'
      NN3032=&POLJE

      SEEK '3033'
      NN3033=&POLJE

      SEEK '3034'
      NN3034=&POLJE

      SEEK '3035'
      NN3035=&POLJE

      SEEK '3036'
      NN3036=&POLJE

      SEEK '3037'
      NN3037=&POLJE

      SEEK '3044'
      NN3044=&POLJE

      SEEK '3045'
      NN3045=&POLJE

      SEEK '3046'
      NN3046=&POLJE
*------------------------------
      SEEK '3001'
      NN3001=NN3002+NN3003+NN3004
      
      REPLACE &POLJE  WITH NN3001
    
*----------------------------------------
      SEEK '3005'
      NN3005=NN3006+NN3007+NN3008+NN3009+NN3010
     
         REPLACE &POLJE  WITH NN3005
*-----------------------------
      SEEK '3011'
      NN3011=NN3001-NN3005
    
         IF NN3011>0
            REPLACE &POLJE WITH NN3011
         ELSE
            REPLACE &POLJE WITH 0
         ENDIF
         NN3011=&POLJE
  *-----------------------------
      SEEK '3012'
      NN3012=NN3005-NN3001
         IF NN3012>0
            REPLACE &POLJE WITH NN3012
         ELSE
            REPLACE &POLJE WITH 0
         ENDIF
         NN3012=&POLJE
    
*'''''''''''''''''''''''''''''''''''''''''''''''''''''''

      SEEK '3013'
      NN3013=NN3014+NN3015+NN3016+NN3017+NN3018
   
         REPLACE &POLJE  WITH NN3013
 
      SEEK '3019'
      NN3019=NN3020+NN3021+NN3022
       
         REPLACE &POLJE  WITH NN3019
*-------------------------
      SEEK '3023'
      NN3023=NN3013-NN3019
         IF NN3023>0
            REPLACE &POLJE WITH NN3023
         ELSE
            REPLACE &POLJE WITH 0
         ENDIF
         NN325=&POLJE
   
      SEEK '3024'
      NN3024=NN3019-NN3013
   
         IF NN3024>0
            REPLACE &POLJE WITH NN3024
         ELSE
            REPLACE &POLJE WITH 0
         ENDIF
         NN3024=&POLJE
 *----------------
      SEEK '3025'
      NN3025=NN3026+NN3027+NN3028+NN3029+NN3030
    
         REPLACE &POLJE  WITH NN3025
   
      SEEK '3031'
      NN3031=NN3032+NN3033+NN3034+NN3035+NN3036+NN3037
      REPLACE &POLJE  WITH NN3031
 
*---------------------------------
      SEEK '3038'
      NN3038=NN3025-NN3031
 
         IF NN3038>0
            REPLACE &POLJE  WITH NN3038
         ELSE
            REPLACE &POLJE  WITH 0
         ENDIF
         NN3038=&POLJE

*----------------------------
      SEEK '3039'
      NN3039=NN3031-NN3025
   
         IF NN3039>0
            REPLACE &POLJE  WITH NN3039
         ELSE
            REPLACE &POLJE  WITH 0
         ENDIF
         NN3039=&POLJE
 
      SEEK '3040'
      NN3040=NN3001+NN3013+NN3025
   
         REPLACE &POLJE  WITH NN3040
    
      SEEK '3041'
      NN3041=NN3005+NN3019+NN3031

         REPLACE &POLJE  WITH NN3041
*----------------------------
      SEEK '3042'
      NN3042=NN3040-NN3041
 
         IF NN3042>0
            REPLACE &POLJE  WITH NN3042
         ELSE
            REPLACE &POLJE  WITH 0
         ENDIF
         NN3042=&POLJE
 *-----------------------
      SEEK '3043'
      NN3043=NN3041-NN3040
   
         IF NN3043>0
            REPLACE &POLJE WITH NN3043
         ELSE
            REPLACE &POLJE WITH 0
         ENDIF
         NN3043=&POLJE
*-----------------------
        SEEK '3047'
      NN3047=NN3042-NN3043+NN3044+NN3045-NN3046
    
         IF NN3047>0
            REPLACE &POLJE WITH NN3047
         ELSE
            REPLACE &POLJE WITH 0
         ENDIF
