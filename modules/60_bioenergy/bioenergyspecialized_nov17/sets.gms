*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

sets

   kbiofuel60(ksd) final biofuels
   / oils, ethanol /

   no_kbiofuel60(kall)  
   /
tece,maiz,trce,rice_pro,soybean,rapeseed,groundnut,sunflower,oilpalm,puls_pro
,potato, cassav_sp,sugr_cane,sugr_beet,others,cottn_pro,foddr, pasture, begr, betr,
oilcakes,sugar,molasses,alcohol,distillers_grain,brans,scp,fibres,
livst_rum, livst_pig,livst_chick, livst_egg, livst_milk, fish,res_cereals, res_fibrous,
res_nonfibrous, wood, woodfuel

   /

   no_kbio60(ksd)  secondary products not used as fuels
   /
    molasses, distillers_grain, fibres, brans, oilcakes, scp, sugar, alcohol
   /

   scen1st60 first generation bioenergy scenarios
       / const2020, const2030, phaseout2020 /

   scen2nd60 second generation bioenergy scenarios
      / SSP1-Ref-SPA0, SSP2-Ref-SPA0, SSP5-Ref-SPA0,
        SSP1-20-SPA0, SSP1-26-SPA0, SSP1-37-SPA0, SSP1-45-SPA0,
        SSP2-20-SPA0, SSP2-26-SPA0, SSP2-37-SPA0, SSP2-45-SPA0, SSP2-60-SPA0, SSP2-OS-SPA2,
        SSP5-20-SPA0, SSP5-26-SPA0, SSP5-37-SPA0, SSP5-45-SPA0, SSP5-60-SPA0,
        SSP1-20-SPA1, SSP1-26-SPA1, SSP1-37-SPA1, SSP1-45-SPA1,
        SSP2-20-SPA2, SSP2-26-SPA2, SSP2-37-SPA2, SSP2-45-SPA2, SSP2-60-SPA2,
        SSP5-20-SPA5, SSP5-26-SPA5, SSP5-37-SPA5, SSP5-45-SPA5, SSP5-60-SPA5, SSP5-OS-SPA5 /
;
