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
cfg$recalibrate <- TRUE
cfg$force_download <- TRUE

for (rcp in c("rcp8p5","rcp6p0","rcp4p5","rcp2p6")) {
 
input <- c(paste0("isimip_rcp-IPSL_CM5A_LR-",rcp,"-co2_rev34_c500_BRA5_ROW07_d49a7a8baaab0edc754ebfc09462be0a.tgz"),
                         paste0("rev4.14_d49a7a8baaab0edc754ebfc09462be0a_magpie.tgz"),
                         paste0("rev4.14_d49a7a8baaab0edc754ebfc09462be0a_validation.tgz"),
                         paste0("additional_data_rev3.58.tgz"))

cfg$input <- input

  for(tc in c("lg","ptc15")) {
    for(ndc in c("ndcon","ndcoff")){
      cfg$title <- paste("BRA_SSP2",rcp,tc,ndc,sep="_")

            if(tc=="ptc15") {
              cfg$gms$s40_pasture_transport_costs <- 0.15 #ptc15
#              cfg$damping_factor <- 0.7
              cfg$gms$disagg_lvst <- "off"
            } else if(tc=="lg") {
              cfg$gms$s40_pasture_transport_costs <- 0
#              cfg$damping_factor <- 0.98
              cfg$gms$disagg_lvst <- "simple_oct17"
            } else stop("Unknown transport cost setting!")

			## Submit the runs
            start_run(cfg,codeCheck=FALSE)
     }
  }
}