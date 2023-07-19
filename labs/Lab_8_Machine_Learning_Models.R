getwd()
csv<-read.csv("data/X_train.csv")
head(csv)
csv2 <- select(csv, -Name, -Equipment, -playerId)
replaceWithMeans <- mutate(csv2,
                           BodyweightKg = ifelse(is.na(BodyweightKg),
                                         mean(BodyweightKg),
                                         BodyweightKg))
replaceWithMeans <- mutate(csv2,
                           Age = ifelse(is.na(Age),
                                         mean(Age),
                                         Age))
replaceWithMeans <- mutate(csv2,
                           BestSquatKg = ifelse(is.na(BestSquatKg),
                                         mean(BestSquatKg),
                                         BestSquatKg))
replaceWithMeans <- mutate(csv2,
                           BestDeadliftKg = ifelse(is.na(BestDeadliftKg),
                                         mean(BestDeadliftKg),
                                         BestDeadliftKg))
noNAs <- na.omit(replaceWithMeans)

intAll <- noNAs|>
  mutate(noNAs,Sex = as.integer(as.factor(Sex)))

intAll <- mutate(noNAs,
                 Age = as.integer(as.factor(Age)))
intAll <- mutate(noNAs,
                 BodyweightKg = as.integer(as.factor(BodyweightKg)))
intAll <- mutate(noNAs,
                 BestSquatKg = as.integer(as.factor(BestSquatKg)))
intAll <- mutate(noNAs,
                 BestDeadliftKg = as.integer(as.factor(BestDeadliftKg)))
intAll

library(dplyr)
df <- intAll %>% mutate_at(c("Sex", "Age","BodyweightKg", "BestSquatKg", "BestDeadliftKg"), as.numeric)
df_no_NA = na.omit(df)



pcas <- prcomp(df_no_NA, scale. = T)
summary(pcas)
pcas$rotation

var_percs <- as.data.frame(pcas$rotation^2)

## get the x values of PCAs and make it a data frame
pca_vals <- as.data.frame(pcas$x)
pca_vals$Sex <- df_no_NA$Sex

ggplot(pca_vals, aes(PC1, PC2, color = Sex)) +
  geom_point() +
  theme_minimal()


library(reshape2)
library(ggplot2)

dfCors <- df_no_NA |>
  cor(df_no_NA) |>
  melt() |>
  as.data.frame()

ggplot(dfCors, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile() +
  scale_fill_gradient2(low = "red", high = "blue", mid = "white",
                       midpoint = 0)
# best deadlift and best squat are most important

library(rsample)

class_split <- initial_split(df_no_NA, prop = .75)

class_train <- training(class_split)
class_test <- testing(class_split)

## Logistic Regression

log_fit <- logistic_reg() |>
  set_engine("glm") |>
  set_mode("classification") |>
  fit(as.factor(Sex) ~ BestSquatKg + BestDeadliftKg + ., data = class_train)

log_fit$fit
summary(log_fit$fit)

install.packages("Metrics")
library(Metrics)
class_results <- class_test

class_results$log_pred <- predict(log_fit, class_test)$.pred_class

F1_Score(class_results$Sex, class_results$log_pred)

## Boosted Decision Tree

boost_class_fit <- boost_tree() |>
  set_engine("xgboost") |>
  set_mode("classification") |>
  fit(as.factor(Sex) ~ ., data = reg_train)

boost_class_fit$fit$evaluation_log

class_results <- class_test

class_results$boost_pred <- predict(boost_class_fit, class_test)$.pred_class

F1_Score(class_results$Sex, class_results$boost_pred)

