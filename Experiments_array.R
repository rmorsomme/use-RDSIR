library(PDSIR)
run_E4 <- TRUE

if(run_E4){ # coverage
  a <- as.integer(Sys.getenv("SLURM_ARRAY_TASK_ID"))
  output_E4 <- experiment_4_coverage(
    N = 1e6, S0 = 1e3, m = 5, thin = 10, a = a
  )
  save(output_E4, file = paste0("Output/RDATA/E4_", a, ".RDATA"))
  print(paste0("E4 array ", a, " is done - ", Sys.time()))
}
