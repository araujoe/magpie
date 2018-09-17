*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de


parameters
 i60_bioenergy_dem(t,i)   bioenergy demand that can be specialized (regional) (10^6 GJ per year)
;

variables
 vm_cost_bioen(i)                   negative bioenergy production costs = revenue (mio. US$)
;

positive variables
 vm_dem_bioen(i,kall)               regional bioenergy demand  (mio. ton DM)
;

equations
 q60_bioenergy_glo                 global specialized bioenergy demand
 q60_bioenergy_reg(i)              regional specialized bioenergy demand
 q60_bioenergy_sum_glo_kbiofuel(kbiofuel60)       total global bioenergy demand for secondary products
 q60_bioenergy_sum_reg_kbiofuel(i, kbiofuel60)    total regional bioenergy demand for secondary products
 q60_bioenergy_sum_glo_nokbiofuel(no_kbiofuel60)       total global bioenergy demand for non-secondary products
 q60_bioenergy_sum_reg_nokbiofuel(i, no_kbiofuel60)    total regional bioenergy demand for non-secondary products
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_cost_bioen(t,i,type)                                   negative bioenergy production costs = revenue (mio. US$)
 ov_dem_bioen(t,i,kall,type)                               regional bioenergy demand  (mio. ton DM)
 oq60_bioenergy_glo(t,type)                                global specialized bioenergy demand
 oq60_bioenergy_reg(t,i,type)                              regional specialized bioenergy demand
 oq60_bioenergy_sum_glo_kbiofuel(t,kbiofuel60,type)        total global bioenergy demand for secondary products
 oq60_bioenergy_sum_reg_kbiofuel(t,i,kbiofuel60,type)      total regional bioenergy demand for secondary products
 oq60_bioenergy_sum_glo_nokbiofuel(t,no_kbiofuel60,type)   total global bioenergy demand for non-secondary products
 oq60_bioenergy_sum_reg_nokbiofuel(t,i,no_kbiofuel60,type) total regional bioenergy demand for non-secondary products
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################
