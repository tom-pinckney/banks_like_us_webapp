# Load in data
library(tidyverse)

bank_similarities <- read_csv("bank_similarities.csv")

bank_names <- sort(unique(bank_similarities$name_1))
names_ids <- bank_similarities %>%
  count(name_1, cert_1) %>%
  select(-n)
