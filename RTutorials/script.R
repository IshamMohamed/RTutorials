student_name <- c("mike", "jane", "robert") #vector of the students
student_age <- c(23, 25, 28)
student_level <- factor(c("MS", "BS", "MS"), levels = c("MS", "BS", 'Diploma'))
student_gender <- factor(c("male", "female", "male"))
#************** List Practice
student_Jane <- list(student_name[2], student_age[2], student_level[2], student_gender[2])
students <- list(student_name, student_age, student_level, student_gender)
#************** Data Frame
studentDataFrame <- data.frame(student_name, student_age, student_level, student_gender)
studentDataFrame[, 1] #all rows and column 1 
studentDataFrame[1,] #all columns of row 1
studentDataFrame$student_age

#************** Packages
install.packages("AzureML")
install.packages("dplyr")
library(dplyr)
View(iris)
select(iris, contains("Wi")) #will show all the data that comes in columns that have Wi in heading

install.packages("RODBC") # For SQL Server

#************** Plot
install.packages("ggplot2")
library(ggplot2)
View(mpg)
a <- ggplot(mpg, aes(cty, hwy)) #will create an empty plot
a + geom_jitter() #adds Jitter chart to the plot with the data
a + geom_density_2d()
a + geom_bin2d(binwidth = c(6, 6))

#************* Market Basket Analysis
library(arules) #install this
library(Matrix) #install this
library(methods)#base package

groceries <- read.transactions("groceries.csv", sep = ",")
Temp <- apriori(groceries, parameter = list(support = 0.006, confidence = 0.25, minlen = 2))
output <- inspect(Temp[1:100])

#************* KNN Cancer Data - Work with Power BI
dataset <- read.transactions("wisc_bc_data.csv", sep = ",")

# data cleaning
normalize <- function(x) { return((x - min(x)) / (max(x) - min(x))) }

# split data
wbcd_n <- as.data.frame(lapply(dataset[3:32], normalize))
train <- wbcd_n[1:450,]
test <- wbcd_n[450:569,]

# prediction
library(class)

train_labels <- dataset[1:450, 2]
test_labels <- dataset[450:569, 2]

wbcd_test_pred <- knn(train = train, test = test, cl = train_labels, k = 21)

output <- dataset[450:569,]
output$Prediction <- wbcd_test_pred

#**************** K Mean
# 'dataset' holds the input data for this script
fit <- kmeans(dataset[, 1:4], 5) #5 is the number of cluster we need to put
mydata <- data.frame(dataset, fit$cluster)