
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
cfg$recalibrate <- FALSE
cfg$force_download <- FALSE

for (rcp in c("rcp8p5","rcp6p0","rcp4p5","rcp2p6")) {
  
  input <- c(paste0("isimip_rcp-IPSL_CM5A_LR-",rcp,"-co2_rev34_c500_BRA5_ROW07_d49a7a8baaab0edc754ebfc09462be0a.tgz"),
             paste0("rev4.14_d49a7a8baaab0edc754ebfc09462be0a_magpie.tgz"),
             paste0("rev4.14_d49a7a8baaab0edc754ebfc09462be0a_validation.tgz"),
             paste0("additional_data_rev3.58.tgz"),
             paste0("calibration_BRA_c500_21Sep18.tgz"))
  
  cfg$input <- input
  cfg$title <- paste("CAP2_BRA_SSP2",rcp,sep="_")
  cfg$gms$c14_yields_scenario  <- "cc"
  cfg$gms$processing <- "bioenergyspecialized_nov17"
  cfg$gms$c42_watdem_scenario  <- "cc"
  cfg$gms$c43_watavail_scenario  <- "cc"
  cfg$gms$c52_carbon_scenario  <- "cc"
  cfg$gms$c59_som_scenario  <- "cc"
  cfg$gms$bioenergy <- "bioenergyspecialized_nov17"
  cfg$gms$c60_1stgen_biodem <- "const2020"
  cfg$developer_mode <- TRUE
  
  start_run(cfg,codeCheck=FALSE)
  
}