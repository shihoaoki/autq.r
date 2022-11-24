library("tidyverse")

tsmat <- read_csv("/work/autqr/data/header.MSnDCG@0010.tsmat.csv")
tsmattidy <- gather(tsmat, key=name, value=score, RMIT, RUCIR, THUIR)
res <- aov(score ~ factor(name), data=tsmattidy)
print(summary(res))