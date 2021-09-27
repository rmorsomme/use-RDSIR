
#
# Setup
library(PDSIR)
run_E1 <- FALSE
run_E3 <- FALSE
run_E4 <- TRUE
run_E5 <- FALSE

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



if(run_E4){ # coverage
  set.seed(2)
  output_E4 <- experiment_4_coverage(
    N = 5e3, S0s = 1e2, R0s = 2, m = 500
  )
  save(output_E4, file = "Output/RDATA/E4.RDATA")
  print(paste0("E4 is done - ", Sys.time()))
}


if(run_E5){ # Ebola
  set.seed(2)
  output_E5 <- experiment_5_ebola(N = 1e6, rho = 0.1)
  save(output_E5, file = "Output/RDATA/E5.RDATA")
  print(paste0("E5 is done - ", Sys.time()))
}

