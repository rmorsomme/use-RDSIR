
library(PDSIR)

load("Output/RDATA/E1.RDATA")

summary_E1 <- experiment_1_output_analysis(
  output_E1, plot_id = "E1", path = "Output/Figures/E1",
  n_max = 1e6, thin = 10
  )

print(list(
  summary_E1$summary_no_burn$ESS,
  summary_E1$summary_no_burn$ESS_sec,
  summary_E1$summary_no_burn$mean_quant,
  output_E1$SIR$MLE
))


load("Output/RDATA/E3.RDATA")
experiment_3_output_analysis(output_E3, path = "Output/Figures/E3")



load("Output/RDATA/E4_1.RDATA")
results <- output_E4
for(i in 2 : 100) {
  load(paste0("Output/RDATA/E4_", i, ".RDATA"))
  results <- rbind(results, output_E4)
}
summary_4 <- experiment_4_output_analysis(results, path = "Output/Figures/E4")

load("Output/RDATA/E5.RDATA")
summary_5 <- experiment_5_output(output_E5, path = "Output/Figures/E5")
