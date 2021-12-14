
library(PDSIR)

# E1
load("Output/RDATA/E1.RDATA")

summary_E1 <- experiment_1_output_analysis(
  output_E1, plot_id = "E1_short", path = "Output/Figures/E1", n_max = 1e4, burnin = 1e3
)
summary_E1 <- experiment_1_output_analysis(
  output_E1, plot_id = "E1", path = "Output/Figures/E1", burnin = 1e4
)

print(list(
  summary_E1$summary_no_burn$ESS,
  summary_E1$summary_no_burn$ESS_sec,
  summary_E1$summary_burn$post_stat,
  output_E1$SIR$MLE
))

# E3
load("Output/RDATA/E3.RDATA")
output_E3[[1]][3,4] <- 8232.786
output_E3 %>%
  map( ~ filter(., S0 != 100)) %>%
  experiment_3_output_analysis(path = "Output/Figures/E3")



load("Output/RDATA/E4_2.RDATA")
results <- output_E4
for(i in 3 : 200) {
  load(paste0("Output/RDATA/E4_", i, ".RDATA"))
  results <- rbind(results, output_E4)
}
summary_E4 <- experiment_4_output_analysis(results, path = "Output/Figures/E4")

load("Output/RDATA/E5.RDATA")
summary_5 <- experiment_5_output(
  output_E5, path = "Output/Figures/E5", burnin = 5e4, thin = 10
  )

load("Output/RDATA/E6_joint.RDATA")
load("Output/RDATA/E6_single.RDATA")
summary_E6_joint <- experiment_1_output_analysis(
  output_E6_joint, plot_id = "E6", path = "Output/Figures/E6/joint"
)
summary_E6_single <- experiment_1_output_analysis(
  output_E6_single, plot_id = "E6", path = "Output/Figures/E6/single"
)
