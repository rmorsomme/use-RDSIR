library(PDSIR)

set.seed(1)
plot_id <- "E1"; path = "Figures/E1"
x <- experiment_1_proof_of_concept(N = 1e3, save_fig = FALSE)
save(x, file = "RDATA/E1.RDATA")
#out <- experiment_1_output_analysis(x, plot_id = plot_id, path = path)

print(list(
  x$MC$run_time, x$MC$rate_accept, # 4, 0.182
  x$Y$T_k,
  #out$summary_no_burn$mean_quant,
  x$SIR$MLE
))
