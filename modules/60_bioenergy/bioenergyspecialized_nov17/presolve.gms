*** (C) 2008-2017 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de



*relax boundaries for all crops which belong to kbe60 as their demand is
*calculated separately (see equations)
vm_dem_bioen.up(i,kbiofuel60) = Inf;
vm_dem_bioen.lo(i,kbiofuel60) = 0;

*fix bioenergy revenue to 0
vm_cost_bioen.fx(i) = 0;

*fix vm_bioenergy_specialized to zero for all product which do not belong to kbiofuel60

vm_bioenergy_specialized.fx(i, no_kbio60, kpr) = 0;