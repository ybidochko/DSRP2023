getwd() #get working directory
csv<-read.csv("X_train.csv") #load csv
#head(csv)
age=csv$Age #access age column
age=na.omit(age) #delete NA values
mean(age)
median(age)
max(age)-min(age) #range
var(age) #variance
sd(age) #standard deviation
iqr <- IQR(age)
iqr
q1 <- quantile(age, 0.25)
q3 <- quantile(age, 0.75)
lower <- q1 - 1.5*iqr
lower
upper <- q3 + 1.5*iqr
upper

#no_outliers <- subset(age, age > lower & age < upper)
age <-age[age>lower & age<upper] #get rid of outliers
mean(age)
median(age)