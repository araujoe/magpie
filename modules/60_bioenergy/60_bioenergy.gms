*** |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
*** |  authors, and contributors see AUTHORS file
*** |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** |  Contact: magpie@pik-potsdam.de

*' @title Bioenergy
*'
*' @description The bioenergy module provides a regional and crop-specific
*' bioenergy demand $vm\_dem\_bioen$ to the model (to the [16_demand] module).
*' For this calculation it requires
*' information on gross energy content (provided by [16_demand] module).
*' 
*' In addition to calculatiom of bioenergy quantities, the production associated
*' costs are delivered to the total costs objective in the [11_costs] module.
*'
*' @authors Jan Philipp Dietrich


*###################### R SECTION START (MODULETYPES) ##########################
$Ifi "%bioenergy%" == "bioenergyspecialized_nov17" $include "./modules/60_bioenergy/bioenergyspecialized_nov17.gms"
$Ifi "%bioenergy%" == "standard_flexreg_may17" $include "./modules/60_bioenergy/standard_flexreg_may17.gms"
*###################### R SECTION END (MODULETYPES) ############################
