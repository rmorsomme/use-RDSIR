library(PDSIR)

set.seed(2)
x <- experiment_1_proof_of_concept(N = 1e6, save_fig = FALSE)
save(x, file = "RDATA/E1.RDATA")

print(list(
  x$MC$run_time, x$MC$rate_accept, # 4, 0.182
  x$Y$T_k,
  x$SIR$MLE
))
