library(PDSIR)

set.seed(1)
plot_id <- "E1"; path = "Figures/E1"
x <- experiment_1_proof_of_concept(
  S0 = 1e3, rho = 1/3, plot_id = plot_id, path = path,
  theta = list(R0 = 2.5, gamma = 1), N = 1e3
)
out <- experiment_1_output_analysis(x, plot_id = plot_id, path = path)
save(x, out, file = "RDATA/E1.RDATA")

print(list(
  x$MC$run_time, x$MC$rate_accept, # 2.2, 0.182
  x$Y$T_k,
  x$SIR$MLE, out$summary_no_burn$mean_quant
))
