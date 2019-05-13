# Load in data
library(tidyverse)

bank_similarities <- read_csv("bank_similarities.csv")

bank_certs <- sort(unique(bank_similarities$cert_1))
