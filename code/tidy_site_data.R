# additional analysis from Masters Work.. or replacing lost work on the mess of a computer I have

library(tidyverse)
ar_q_no3 <- read_csv("data/AR_Q_no3.csv")
fr_q_no3 <- read_csv("data/FR_Q_no3.csv")
ur_q_no3 <- read_csv("data/UR_Q_no3.csv")

ar_q_no3 %>%
  mutate( mass_flux_mgs= (no3_mgL*q_Ls)) ->ar_data 
ar_data %>%
  summary(ar_data) ->stats_ar
fr_q_no3 %>%
  mutate( mass_flux_mgs= (no3_mgL*q_Ls)) ->fr_data
stats_fr <- summary(fr_data)
ur_q_no3 %>%
  mutate( mass_flux_mgs= (no3_mgL*q_Ls)) ->ur_data
stats_ur <- summary(ur_data)



view(stats_ar)
view(stats_fr)
view(stats_ur)
