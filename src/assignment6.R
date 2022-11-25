library("tidyverse")

# hn <- read_csv("/work/autqr/data/Hananiradata.csv",locale = locale(encoding = "shift-jis"))

mistack <- read_csv("/work/autqr/data/gotoudata.csv")
mistack.lm <- lm(y~x1+x2, data=mistack)
print(summary(mistack.lm))