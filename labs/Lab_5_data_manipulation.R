getwd() #get working directory
csv<-read.csv("data/X_train.csv")
library(ggplot2)
ggplot()
## filtering the observations of my dataset based on one or more variable using filter()
#filter(csv, Sex == "M")

## create a smaller dataset with a subset of variables using select()
select(csv, Name, Sex, Age, BodyweightKg)

## Add 2 new columns to my dataset using mutate()
mutate(csv,
       sum_of_lifts = as.double(BestSquatKg) + as.double(BestDeadliftKg),
       length_of_name = nchar(Name) - 1)

## Create a data table of grouped summaries on at least one numeric variable by at least one categorical variable using summarize()
summarize(csv,
          mean_age = mean(Age, na.rm = T),
          .by = Equipment)

## Reorder a data table of your choice by one or more variables using arrange()
arrange(csv, Age)

ggplot(data = csv, aes(x = Equipment, y = Age)) +
  geom_bar(stat = "summary")
ggsave("plots/equipment_age.png")