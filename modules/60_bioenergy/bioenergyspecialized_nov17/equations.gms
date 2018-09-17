*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de


q60_bioenergy_glo.. sum((kbiofuel60,kpr,i2), vm_bioenergy_specialized(i2,kbiofuel60,kpr)*fm_attributes("ge",kbiofuel60))
          =g= sum((ct,i2),i60_bioenergy_dem(ct,i2))*(1-c60_biodem_level);

q60_bioenergy_reg(i2).. sum((kbiofuel60,kpr), vm_bioenergy_specialized(i2,kbiofuel60,kpr)*fm_attributes("ge",kbiofuel60))
          =g= sum(ct,i60_bioenergy_dem(ct,i2))*c60_biodem_level;

q60_bioenergy_sum_glo_kbiofuel(kbiofuel60).. sum(i2, vm_dem_bioen(i2,kbiofuel60))*(1-c60_biodem_level)
          =e= ((sum((i2,ct),f60_1stgen_bioenergy_dem(ct,i2,"%c60_1stgen_biodem%",kbiofuel60))/fm_attributes("ge",kbiofuel60))
              + sum((i2,kpr),vm_bioenergy_specialized(i2,kbiofuel60,kpr)))*(1-c60_biodem_level);

q60_bioenergy_sum_glo_nokbiofuel(no_kbiofuel60).. sum(i2, vm_dem_bioen(i2,no_kbiofuel60))*(1-c60_biodem_level)
          =e= ((sum((i2,ct),f60_1stgen_bioenergy_dem(ct,i2,"%c60_1stgen_biodem%",no_kbiofuel60))/fm_attributes("ge",no_kbiofuel60))
              )*(1-c60_biodem_level);

q60_bioenergy_sum_reg_kbiofuel(i2, kbiofuel60).. vm_dem_bioen(i2,kbiofuel60)*c60_biodem_level
          =e= (sum(ct,f60_1stgen_bioenergy_dem(ct,i2,"%c60_1stgen_biodem%",kbiofuel60))/fm_attributes("ge",kbiofuel60)
              + sum(kpr,vm_bioenergy_specialized(i2,kbiofuel60,kpr)))*c60_biodem_level;

q60_bioenergy_sum_reg_nokbiofuel(i2, no_kbiofuel60).. vm_dem_bioen(i2,no_kbiofuel60)*c60_biodem_level
          =e= (sum(ct,f60_1stgen_bioenergy_dem(ct,i2,"%c60_1stgen_biodem%",no_kbiofuel60))/fm_attributes("ge",no_kbiofuel60)
              )*c60_biodem_level;
