install.packages("languageserver")
languageserver::run()
library(dplyr)
data(cars)
head(cars)
select(cars, speed)
install.packages("dplyr")
library(dplyr)
select(cars, speed)

?class
help.start()
R.home("bin")
my_vector <- 1:30
my_vector
class(my_vector)

dim(my_vector) <- c(5,6)
dim(my_vector)
my_vector

outMatrix <- matrix(data = 1:30, nrow = 5, ncol = 6)
outMatrix
matrix(1:40, nrow = 8, ncol = 5)

m2 <- 1:100
mean(m2)
sd(m2)
max(m2)
min(m2)
mood(m2)
range(m2)
sum(m2)


df <- data.frame(
    Name = c("Masum", "Salma", "Sawda"),
    Age = c(35, 28, 4),
    Gender = c("Male", "Female", "Female")
)
df
# Pipe operator %<%
install.packages("dplyr")
library(dplyr)
df
head(df)
print(df)
install.packages("palmerpenguins")
library(palmerpenguins)
head(penguins)
penguins
install.packages("tidyverse")
library(library)
install.packages