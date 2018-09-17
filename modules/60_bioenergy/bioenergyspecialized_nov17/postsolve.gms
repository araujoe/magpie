*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3 
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de



*#################### R SECTION START (OUTPUT DEFINITIONS) #####################
 ov_cost_bioen(t,i,"marginal")                                   = vm_cost_bioen.m(i);
 ov_dem_bioen(t,i,kall,"marginal")                               = vm_dem_bioen.m(i,kall);
 oq60_bioenergy_glo(t,"marginal")                                = q60_bioenergy_glo.m;
 oq60_bioenergy_reg(t,i,"marginal")                              = q60_bioenergy_reg.m(i);
 oq60_bioenergy_sum_glo_kbiofuel(t,kbiofuel60,"marginal")        = q60_bioenergy_sum_glo_kbiofuel.m(kbiofuel60);
 oq60_bioenergy_sum_reg_kbiofuel(t,i,kbiofuel60,"marginal")      = q60_bioenergy_sum_reg_kbiofuel.m(i,kbiofuel60);
 oq60_bioenergy_sum_glo_nokbiofuel(t,no_kbiofuel60,"marginal")   = q60_bioenergy_sum_glo_nokbiofuel.m(no_kbiofuel60);
 oq60_bioenergy_sum_reg_nokbiofuel(t,i,no_kbiofuel60,"marginal") = q60_bioenergy_sum_reg_nokbiofuel.m(i,no_kbiofuel60);
 ov_cost_bioen(t,i,"level")                                      = vm_cost_bioen.l(i);
 ov_dem_bioen(t,i,kall,"level")                                  = vm_dem_bioen.l(i,kall);
 oq60_bioenergy_glo(t,"level")                                   = q60_bioenergy_glo.l;
 oq60_bioenergy_reg(t,i,"level")                                 = q60_bioenergy_reg.l(i);
 oq60_bioenergy_sum_glo_kbiofuel(t,kbiofuel60,"level")           = q60_bioenergy_sum_glo_kbiofuel.l(kbiofuel60);
 oq60_bioenergy_sum_reg_kbiofuel(t,i,kbiofuel60,"level")         = q60_bioenergy_sum_reg_kbiofuel.l(i,kbiofuel60);
 oq60_bioenergy_sum_glo_nokbiofuel(t,no_kbiofuel60,"level")      = q60_bioenergy_sum_glo_nokbiofuel.l(no_kbiofuel60);
 oq60_bioenergy_sum_reg_nokbiofuel(t,i,no_kbiofuel60,"level")    = q60_bioenergy_sum_reg_nokbiofuel.l(i,no_kbiofuel60);
 ov_cost_bioen(t,i,"upper")                                      = vm_cost_bioen.up(i);
 ov_dem_bioen(t,i,kall,"upper")                                  = vm_dem_bioen.up(i,kall);
 oq60_bioenergy_glo(t,"upper")                                   = q60_bioenergy_glo.up;
 oq60_bioenergy_reg(t,i,"upper")                                 = q60_bioenergy_reg.up(i);
 oq60_bioenergy_sum_glo_kbiofuel(t,kbiofuel60,"upper")           = q60_bioenergy_sum_glo_kbiofuel.up(kbiofuel60);
 oq60_bioenergy_sum_reg_kbiofuel(t,i,kbiofuel60,"upper")         = q60_bioenergy_sum_reg_kbiofuel.up(i,kbiofuel60);
 oq60_bioenergy_sum_glo_nokbiofuel(t,no_kbiofuel60,"upper")      = q60_bioenergy_sum_glo_nokbiofuel.up(no_kbiofuel60);
 oq60_bioenergy_sum_reg_nokbiofuel(t,i,no_kbiofuel60,"upper")    = q60_bioenergy_sum_reg_nokbiofuel.up(i,no_kbiofuel60);
 ov_cost_bioen(t,i,"lower")                                      = vm_cost_bioen.lo(i);
 ov_dem_bioen(t,i,kall,"lower")                                  = vm_dem_bioen.lo(i,kall);
 oq60_bioenergy_glo(t,"lower")                                   = q60_bioenergy_glo.lo;
 oq60_bioenergy_reg(t,i,"lower")                                 = q60_bioenergy_reg.lo(i);
 oq60_bioenergy_sum_glo_kbiofuel(t,kbiofuel60,"lower")           = q60_bioenergy_sum_glo_kbiofuel.lo(kbiofuel60);
 oq60_bioenergy_sum_reg_kbiofuel(t,i,kbiofuel60,"lower")         = q60_bioenergy_sum_reg_kbiofuel.lo(i,kbiofuel60);
 oq60_bioenergy_sum_glo_nokbiofuel(t,no_kbiofuel60,"lower")      = q60_bioenergy_sum_glo_nokbiofuel.lo(no_kbiofuel60);
 oq60_bioenergy_sum_reg_nokbiofuel(t,i,no_kbiofuel60,"lower")    = q60_bioenergy_sum_reg_nokbiofuel.lo(i,no_kbiofuel60);
*##################### R SECTION END (OUTPUT DEFINITIONS) ######################

