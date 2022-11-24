library("tidyverse")

tsmat <- read_csv("/work/autqr/data/header.MSnDCG@0010.tsmat.csv")
tsmat <- data.frame(Topic=1:100, tsmat)
tsmattidy <- gather(tsmat, key=name, value=score,-Topic)
res <- aov(score ~ factor(name)+factor(Topic) ,data=tsmattidy)
print(summary(res))