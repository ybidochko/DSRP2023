## naming
name <- "Sarah"
NAME <- "Joe"
n.a.m.e <- "Sam"
n_a_m_e <- "Lisa"
## Object manipulation ####
number
number + 7
decimal
number + decimal
name <- "Sarah"
paste(name, " Parker") #concatenated character vectors
paste(name, number) # we can join together characters and numbers
paste("Hello", n.a.m.e, "I am", number, "years old")
?grep
food <- "watermelon"
grep("me", food) # T or F, is the pattern in the character object
## substituting characters in words
sub("me", "you", food)
sub("me","", food)
# vectors ####
#make a vector of numerics
numbers <- c(1, 2, 3, 4, 5)
#make a vectors of characters
letter <- c("a", "b", "c")
paste("a", "b", "c") #paste is different from c
letters <- c(letters, "d")
letter
letters <- c(letters, letter)
2+2
number <- 5
number
number+1
number <- number + 1
#this is a comment
number <- 10
# R Objects ####
ls() #print the names of all objects in our envirnoment
number <- 15
decimal <- 1.5
letter <- "a"
word <- "hello"
logic <- TRUE
logic2 <- F
## types of variables
## there are 3 main classes: numeric, character, and logical
class(number)
class(decimal) # numeric
class(letter)
class(word) # character
class(logic) # logical
## there is more variation in types
typeof(number)
typeof(decimal)
## we can change the type of an object
as.character(number)
as.integer(number)
as.integer(decimal)
## how to round numbers
round(decimal) # less than 0.5, rounds down. greater or equal to 0.5, rounds up
round(22/7)
round(22/7, 3)
?round #? pulls up documentation
22/7
ceiling(22/7) # ceiling always rounds up
floor(22.7) # floor always rounds down
floor(3.9)
?as.integer
word_as_int <- as.integer("hello")
## NA values
NA + 5
## naming
name <- "Sarah"
NAME <- "Joe"
n.a.m.e <- "Sam"
n_a_m_e <- "Lisa"
## Object manipulation ####
number
number + 7
decimal
number + decimal
name <- "Sarah"
paste(name, " Parker") #concatenated character vectors
paste(name, number) # we can join together characters and numbers
paste("Hello", n.a.m.e, "I am", number, "years old")
?grep
food <- "watermelon"
grep("me", food) # T or F, is the pattern in the character object
## substituting characters in words
sub("me", "you", food)
sub("me","", food)
# vectors ####
#make a vector of numerics
numbers <- c(1, 2, 3, 4, 5)
#make a vectors of characters
letters <- c("a", "b", "c")
paste("a", "b", "c") #paste is different from c
letters <- c(letters, "d")
letter
letters <- c(letters, letter)
rep(3,5)
rep(c(1, 2), 5)
seq(1,5)
seq(1,5, 0.5)
c(rep(1,3), rep(2,3))
rep(1:2, each = 3)
View(mtcars)
summary(mtcars)
head(mtcars)
mtcars$gear
sum(mtcars$gear)
view(iris)
view(iris)
iris
view(iris)
first5 <- iris$Sepal.Length[1:5]
first5
mean(first5)
mean(iris$Sepal.Length)
mean(iris$Sepal.Length)-(3*sd(iris$Sepal.Length))
mean(iris$Sepal.Length)-(3*sd(iris$Sepal.Length))
x <- mean(iris$Sepal.Length)-(3*sd(iris$Sepal.Length))
x
x <- mean(iris$Sepal.Length)-(3*sd(iris$Sepal.Length))
x
iris
view(iris)
iris
view(iris)
iris
view(iris)
iris
view(iris)
iris
view(iris)
View(iris)
mean(iris$Sepal.Length)-(3*sd(iris$Sepal.Length))
getwd() #get working directory
read.csv("super_hero_powers.csv")
read.csv("X_train.csv")
x<-read.csv("X_train.csv")
x
head(x)
head(csv)
getwd() #get working directory
csv<-read.csv("X_train.csv")
head(csv)
age=csv$Age
age
sum(age)
sum(age)/1000
age=na.omit(age)
age
sum(age)
age
age
age
age
age
age
age
age=csv$Age
getwd() #get working directory
csv<-read.csv("X_train.csv")
head(csv)
age=csv$Age
age=na.omit(age)
age
mean(age)
median(age)
range(age)
range(age)
max(age)-min(age)
max(age)
min(age)
max(age)-min(age)
var(age)
sd(age)
IQR(age)
quantile(age, 0.25)
quantile(age, 0.75)
IQR(age)
lower <- q1 - 1.5*iqr
iqr <- IQR(age)
q1 <- quantile(age, 0.25)
q3 <- quantile(age, 0.75)
lower <- q1 - 1.5*iqr
upper <- q3 + 1.5*iqr
lower <- q1 - 1.5*iqr
lower
upper
lower <- q1 - 1.5*iqr
lower <- q1 - 1.5*iqr
lower
upper
min(age)
max(age)
q1
q3
no_outliers <- subset(age, age > lower & data < upper)
?subset
no_outliers <- subset(age, age > lower & age < upper)
no_outliers
max(no_outliers)
min(no_outliers)
age[age<10]
age[age>lower & age<upper]
age <-age[age>lower & age<upper]
max(age
    max(age
        max(age)
        min(age)
        mean(age)
        median(age)
        getwd() #get working directory
        csv<-read.csv("X_train.csv")
        #head(csv)
        age=csv$Age
        age=na.omit(age)
        mean(age)
        median(age)
        max(age)-min(age)
        var(age)
        sd(age)
        iqr <- IQR(age)
        iqr
        age <-age[age>lower & age<upper]
        mean(age)
        median(age)
        install.packages("ggplot2")
        ggplot()
        library(ggplot2)
        ggplot()
        str(mpg)
        ggplot(data = mpg, aes(x = hwy, y = cty)) #+
        ggplot(data = mpg, aes(x = hwy, y = cty)) +
          geom_point()
        ggplot(data = mpg, aes(x = hwy, y = cty)) +
          geom_point() +
          labs(x = "highway mpg",
               y = "city mpg",
               title = "car city vs highway milage")
        ggplot(data = mpg, aes(x = hwy)) +
          geom_histogram
        ggplot(data = mpg, aes(x = hwy)) +
          geom_histogram()
        ggplot(data = iris$Sepal.Length, aes(x = hwy)) +
          geom_histogram()
        View(iris)
        ggplot(data = iris$Sepal.Length, aes(x = hwy)) +
          geom_histogram()
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram()
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 100)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 1)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 2)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 50)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 40)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 30)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 35)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 34)
        library(ggplot2)
        ggplot()
        ##mpg dataset
        str(mpg)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bins = 33)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(binwidth = 1)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(binwidth = 0.25)
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_histogram(bina = 35)
        ## density plot
        ggplot(data = mpg, aes(x = hwy)) +
          geom_density()
        ggplot(data = iria, aes(x = Sepal.Length)) +
          geom_density()
        ggplot(data = iris, aes(x = Sepal.Length)) +
          geom_density()
        ggplot(data = iris, aes(x = Sepal.Length), y = after_stat(count)) +
          geom_density()
        ggplot(data = iris, aes(x = Sepal.Length, y = after_stat(count))) +
          geom_density()
        ## boxplot
        ggplot(data = mpg, aes(x = hwy)) +
          geom_boxplot()
        ggplot(data = iris, aes(y = Sepal.Length)) +
          geom_boxplot()
        ggplot(data = iris, aes(x = Sepal.Length, y = Species)) +
          geom_boxplot()
        ggplot(data = iris, aes(x = Sepal.Length, y = Species)) +
          geom_violin()
        ggplot(data = iris, aes(x = Sepal.Length, y = Species)) +
          geom_violin()
        ## violin and boxplot
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_boxplot() + geom_violin()
        ## violin and boxplot
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_violin(color = "violet") +
          geom_boxplot(width = 0.2)
        ## violin and boxplot
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_violin(color = "violet", fill = "lightpink") +
          geom_boxplot(width = 0.2)
        ## violin and boxplot
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_violin(color = "violet", fill = "grey80") +
          geom_boxplot(width = 0.2)
        ## violin and boxplot
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_violin(color = "violet", fill = "grey80") +
          geom_boxplot(width = 0.2, fill = NA)
        ## barplots
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_bar(stat = "summary",
                   fun = mean)
        ## barplots
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_bar(stat = "summary",
                   fun = "mean")
        ##scatter plot
        ggplot(data = iris, aes(x = Species, y = Sepal.Width)) +
          geom_point()
        ##scatter plot
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_point()
        ggplot(data = iris, aes(x = Species, y = Sepal.Length)) +
          geom_jitter()
        ## line plot
        ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
          geom_point() +
          geom_line()
        ## line plot
        ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
          #geom_point() +
          geom_line(stat = "summary", fun = "mean")
        iris$Species <- recorder(iris$Species,)
        iris$Species <- factor(iris$Species, levels = c("versicolor", "setosa", "virginica"))
        mpg$year <- as.factor(mpg$year)
        iris$Species <- factor(iris$Species, levels = c("versicolor", "setosa", "virginica"))
        iris$Species
        csv<-read.csv("X_train.csv") #load csv
        density plot
        ## density plot
        #ggplot(data = mpg, aes(x = hwy)) +
        #geom_density()
        csv.head()
        head(csv)
        ## density plot
        ggplot(data = csv, aes(x = bw)) +
          geom_density()
        getwd() #get working directory
        csv<-read.csv("X_train.csv") #load csv
        head(csv)
        bw = csv$BodyweightKg
        ## density plot
        ggplot(data = csv, aes(x = bw)) +
          geom_density()
        ## density plot
        ggplot(data = csv, aes(x = bw)) +
          geom_boxplot()
        ## density plot
        ggplot(data = csv, aes(x = bw)) +
          geom_density() +
          labs(x = "body weight kg",
               y = "density",
               title = "density of bodyweight")
        ggplot(data = csv, aes(x = gender, y = squat)) +
          geom_bar(stat = "summary",
                   fun = "mean")
        getwd() #get working directory
        csv<-read.csv("X_train.csv") #load csv
        head(csv)
        bw = csv$BodyweightKg
        gender = csv$Sex
        squat = csv$BestSquatKg
        ## density plot
        ggplot(data = csv, aes(x = bw)) +
          geom_density() +
          labs(x = "body weight kg",
               y = "density",
               title = "density of bodyweight")
        ggplot(data = csv, aes(x = gender, y = squat)) +
          geom_bar(stat = "summary",
                   fun = "mean")
        ggplot(data = csv, aes(x = gender, y = squat)) +
          geom_bar()
        ggplot(data = csv, aes(x = gender, y = squat)) +
          geom_bar(stat = "summary")
        ggplot(data = csv, aes(x = gender)) +
          geom_bar()
        ggsave("plots/density_bodyweight")
        getwd() #get working directory
        csv<-read.csv("X_train.csv") #load csv
        head(csv)
        bw = csv$BodyweightKg
        gender = csv$Sex
        squat = csv$BestSquatKg
        ## density plot
        ggplot(data = csv, aes(x = bw)) +
          geom_density() +
          labs(x = "body weight kg",
               y = "density",
               title = "density of bodyweight")
        ggsave("plots/density_bodyweight")
        ggsave("plots/density_bodyweight.png")
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point()
        deadlift = csv$BestDeadliftKg
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_line()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point()
        ?geom_point
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point() +
          geom_smooth(se = F)
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point() +
          geom_smooth()
        ggplot(data = csv, aes(x = gender, fill = gender)) +
          geom_bar()
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point() +
          geom_smooth()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 1) +
          geom_smooth()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.25) +
          geom_smooth()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.5) +
          geom_smooth()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 1) +
          geom_smooth()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 1) +
          geom_smooth() +
          geom_count()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.75) +
          geom_smooth()
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.75) +
          geom_smooth() +
          labs(y = "bodyweight")
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.75) +
          geom_smooth() +
          labs(y = "bodyweight(kg)")
        ## scatter plot
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.75) +
          geom_smooth() +
          labs(x = "deadlift(kg)",
               y = "bodyweight(kg)")
        ggplot(data = csv, aes(x = gender, fill = gender)) +
          geom_bar()
        ggsave("plots/bar_plot_gender")
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.75) +
          geom_smooth() +
          labs(x = "deadlift(kg)",
               y = "bodyweight(kg)")
        ggsave("plots/scatter_bw_deadlift")
        ggplot(data = csv, aes(x = gender, fill = gender)) +
          geom_bar()
        ggsave("plots/bar_plot_gender.png")
        ggplot(data = csv, aes(x = deadlift, y = bw)) +
          geom_point(size = 0.75) +
          geom_smooth() +
          labs(x = "deadlift(kg)",
               y = "bodyweight(kg)")
        ggsave("plots/scatter_bw_deadlift.png")
        library(ggplot2)
        ggplot(data = mpg, aes(x = hwy)) + geom_density()
        library(ggplot2)
        ggplot(data = mpg, aes(x = hwy)) + geom_density()                           
        