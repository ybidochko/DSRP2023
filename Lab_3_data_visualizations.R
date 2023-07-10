getwd() #get working directory
csv<-read.csv("X_train.csv") #load csv

head(csv)
bw = csv$BodyweightKg
gender = csv$Sex
squat = csv$BestSquatKg
deadlift = csv$BestDeadliftKg
## density plot
ggplot(data = csv, aes(x = bw)) +
  geom_density() +
  labs(x = "body weight kg",
       y = "density",
       title = "density of bodyweight")
ggsave("plots/density_bodyweight.png")

## bar plot
ggplot(data = csv, aes(x = gender, fill = gender)) +
  geom_bar()
ggsave("plots/bar_plot_gender.png")

## scatter plot
ggplot(data = csv, aes(x = deadlift, y = bw)) +
  geom_point(size = 0.75) +
  geom_smooth() +
  labs(x = "deadlift(kg)",
       y = "bodyweight(kg)")
ggsave("plots/scatter_bw_deadlift.png")
