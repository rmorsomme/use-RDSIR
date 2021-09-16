
load("RDATA/E1.RDATA")

out <- experiment_1_output_analysis(x, plot_id = "E1", path = "Figures/E1")

print(list(
  out$summary_no_burn$mean_quant,
  x$SIR$MLE
))
