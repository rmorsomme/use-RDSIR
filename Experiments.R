
#
# Setup
library(PDSIR)
run_E1 <- FALSE
run_E3 <- TRUE

#
# Experiments
if(run_E1){ # Proof of Concept
  set.seed(2)
  output_E1 <- experiment_1_proof_of_concept(N = 1e6, save_fig = FALSE)
  save(output_E1, file = "Output/RDATA/E1.RDATA")

  print(list(
    output_E1$MC$run_time, output_E1$MC$rate_accept, # 4, 0.182
    output_E1$Y$T_k,
    output_E1$SIR$MLE
  ))
}

if(run_E3){ # Rho
  set.seed(2)
  output_E3 <- experiment_3_acceptance_vs_rho(
    S0s = c(100, 250, 500, 1000), R0s = c(1.75, 2, 2.5, 3), N = 1e6
    )
  save(output_E3, file = "Output/RDATA/E3.RDATA")
  }
