library(PDSIR)
run_E4 <- TRUE

if(run_E4){ # coverage
  i <- as.integer(Sys.getenv("SLURM_ARRAY_TASK_ID"))
  set.seed(i)
  output_E4 <- experiment_4_coverage(
    N = 1e5, S0s = 1e2, R0s = 2, m = 10, thin = 10, rho = 1
  )
  save(output_E4, file = paste0("Output/RDATA/E4_", i, ".RDATA"))
  print(paste0("E4 is done - ", Sys.time()))
}
