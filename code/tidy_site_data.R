# additional analysis from Masters Work.. or replacing lost work on the mess of a computer I have

library(tidyverse)
ar_q_no3 <- read_csv("data/AR_Q_no3.csv")
fr_q_no3 <- read_csv("data/FR_Q_no3.csv")
ur_q_no3 <- read_csv("data/UR_Q_no3.csv")

ar_q_no3 %>%
  mutate( mass_flux_mgs= (no3_mgL*q_Ls),site="ar") ->ar_data 
ar_data %>%
  summary(ar_data) ->stats_ar
fr_q_no3 %>%
  mutate( mass_flux_mgs= (no3_mgL*q_Ls), site="fr") ->fr_data
stats_fr <- summary(fr_data)
ur_q_no3 %>%
  mutate( mass_flux_mgs= (no3_mgL*q_Ls),site = "ur") ->ur_data
stats_ur <- summary(ur_data)



view(stats_ar)
view(stats_fr)
view(stats_ur)

#combine all data into one dataframe
site_data = rbind(fr_data,ar_data,ur_data)

ggplot(site_data) +
  geom_point(mapping = aes(x = no3_mgL, y=mass_flux_mgs, color=site)) +
  facet_wrap(~site) +
  labs(title = "Nitrate vs. Mass Flux")
ggsave("outputs/no3_vs_mf.pdf")

ggplot(site_data) +
  geom_point(mapping = aes(x = q_Ls, y=mass_flux_mgs, color=site)) +
  facet_wrap(~site) +
  labs(title = "Discharge vs. Mass Flux")
ggsave("outputs/q_vs_mf.pdf")

ggplot(site_data) +
  geom_point(mapping = aes(x = date, y=mass_flux_mgs, color=site))
