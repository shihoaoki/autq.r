library("tidyverse")
insurance <- read_csv("/work/autqr/data/insurance2.csv")
insurance$age2 <- insurance$age^2
insurance$bmi30 <- ifelse(insurance$bmi >= 30, 1, 0)
ins_model <- lm(charges ~ age + age2 + children + bmi + sex + bmi30*smoker, data=insurance)
print(summary(ins_model))