library(PDSIR)

set.seed(1)
plot_id <- "E1"; path = "Figures/E1"
x <- experiment_1_proof_of_concept(N = 1e3, save_fig = FALSE)
out <- experiment_1_output_analysis(x, plot_id = plot_id, path = path)
save(x, out, file = "RDATA/E1.RDATA")

print(list(
  x$MC$run_time, x$MC$rate_accept, # 4, 0.182
  x$Y$T_k,
  x$SIR$MLE, out$summary_no_burn$mean_quant
))
