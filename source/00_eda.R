# EDA
library(tidyverse)
library(here)

subset_schedules <- read_tsv(here::here('data','raw', 'FFIEC_CDR_Call_Bulk_Subset_of_Schedules_2018', 'FFIEC CDR Call Subset of Schedules 2018(1 of 2).txt'))

new_colnames <- t(subset_schedules[1,]) %>%
  as_tibble(rownames = 'names') %>%
  unite(new_names, names, V1, sep = "_") %>%
  pull()

colnames(subset_schedules) <- new_colnames
