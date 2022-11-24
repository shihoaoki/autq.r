library("tidyverse")

mat <- read_csv("/work/autqr/data/20topics3runs.mat.csv")

t.test(mat$System1, mat$System3, paired=TRUE) %>%
print()