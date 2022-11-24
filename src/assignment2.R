library("tidyverse")

mat <- read_csv("/work/autqr/data/20topics3runs.mat.csv")

#Studentのt検定
t.test(mat$System1, mat$System3, var.equal=TRUE) %>%
print()

#Welchのt検定
t.test(mat$System1, mat$System3) %>%
print()