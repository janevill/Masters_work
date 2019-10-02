# additional analysis from Masters Work.. or replacing lost work on the mess of a computer I have

library(tidyverse)
ar_q_no3 <- read_csv("data/AR_Q_no3.csv")
fr_q_no3 <- read_csv("data/FR_Q_no3.csv")
ur_q_no3 <- read_csv("data/UR_Q_no3.csv")

gather(date, date_1,date_2,date_3,date_4,date_5,date_6,date_7,date_8,key = "date",
       value = "q_2","q_3", "q_4", "q_5","q_6", "q_7", "q_8", "q_9", "q_10",
       "no3_2", "no3_3", "no3_4", "no3_5", "no3_6", "no3_7","no3_8", "no3_9", "no3_10") ->tidy_ar