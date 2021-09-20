
library(PDSIR)

load("Output/RDATA/E1.RDATA")

summary_E1 <- experiment_1_output_analysis(output_E1, plot_id = "E1", path = "Output/Figures/E1", n_max = 1e3, thin = 10)

print(list(
  summary_E1$summary_no_burn$mean_quant,
  output_E1$SIR$MLE
))


load("Output/RDATA/E3.RDATA")
experiment_3_output_analysis(output_E3, path = "Output/Figures/E3")

