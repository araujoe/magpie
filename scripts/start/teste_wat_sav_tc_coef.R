# |  (C) 2008-2018 Potsdam Institute for Climate Impact Research (PIK),
# |  authors, and contributors see AUTHORS file
# |  This file is part of MAgPIE and licensed under GNU AGPL Version 3
# |  or later. See LICENSE file or go to http://www.gnu.org/licenses/
# |  Contact: magpie@pik-potsdam.de


######################################
#### Script to start a MAgPIE run ####
######################################

library(lucode)
library(magclass)

# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

#start MAgPIE run
source("config/default.cfg")

cfg$results_folder <- "output/:title:"

for (coeficiente in c(0.1, 0.2 , 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) {



  
      cfg$title <- paste("water_saving_tc_cost", coeficiente, sep="_")

      cfg$c42_wat_saving_tc_coeff <- coeficiente
     
			## Submit the runs
            start_run(cfg,codeCheck=FALSE)
 
}
