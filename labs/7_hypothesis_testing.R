getwd() #get working directory
csv<-read.csv("data/X_train.csv")
library(dplyr)

#compare the best squat of male and females
#null hypothesis: best squat is equal in both males and females
#alternative hypothesis: the best squat is different from males to females


csv %>% drop_na()
head(csv)
males <- filter(csv, Sex == "M")
females <- filter(csv, Sex == "F")
suppressWarnings(as.numeric(males$BestSquatKg))

suppressWarnings(t.test(as.numeric(males$BestSquatKg), as.numeric(females$BestSquatKg), paired = F, alternative = "two.sided"))
#p value: 2.2e-16

#unique(csv$Equipment)

## question 2

anova_results <- aov(data = csv, BestDeadliftKg ~ Equipment)
summary(anova_results)
TukeyHSD(anova_results)


## question 3

t <- table(csv$Sex, csv$Equipment)
chisq.test(t)


