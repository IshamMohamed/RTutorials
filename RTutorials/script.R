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

