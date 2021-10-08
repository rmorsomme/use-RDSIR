
#
# Setup
library(PDSIR)
run_E1 <- FALSE
run_E3 <- FALSE
run_E5 <- FALSE
run_E6 <- TRUE

#
# Experiments
if(run_E1){ # Proof of Concept
  set.seed(2)
  output_E1 <- experiment_1_proof_of_concept(N = 1e6, save_fig = FALSE)
  save(output_E1, file = "Output/RDATA/E1.RDATA")

  print(list(
    output_E1$MC$run_time, output_E1$MC$rate_accept, # 4, 0.182
    output_E1$Y$T_k,
    output_E1$SIR$MLE,
    paste0("E1 is done - ", Sys.time())
  ))
}

if(run_E3){ # Rho
  set.seed(2)
  output_E3 <- experiment_3_acceptance_vs_rho(
    S0s = c(1000, 500, 250, 100), R0s = c(3, 2.5, 2, 1.75), N = 250e3
    )
  save(output_E3, file = "Output/RDATA/E3.RDATA")
  print(paste0("E3 is done - ", Sys.time()))
}


if(run_E5){ # Ebola
  set.seed(1)
  output_E5 <- experiment_5_ebola(N = 1e6, rho = 0.1, thin = 10)
  save(output_E5, file = "Output/RDATA/E5.RDATA")
  print(paste0("E5 is done - ", Sys.time()))
}


if(run_E6){ # Ebola

  set.seed(1)
  output_E6_single <- experiment_6_single_site_update(N = 1e6, save_fig = FALSE, thin = 10)
  save(output_E6_single, file = "Output/RDATA/E6_single.RDATA")

  set.seed(1)
  output_E6_joint  <- experiment_1_proof_of_concept(N = 1e6, save_fig = FALSE, thin = 10, rho = 1/10)
  save(output_E6_joint, file = "Output/RDATA/E6_joint.RDATA" )

  print(paste0("E6 is done - ", Sys.time()))

}

