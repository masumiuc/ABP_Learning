"""

Author: Noman
Course: DSBA 
Batch: 9
Date: 27 Mar 2025

"""


5+7
x1 <- 50 + 7 # assignment operator in R
print(x1)

x2 <- 1:20
mean(x2)
sd(x2)
range(x2)

min(x2)
max(x2)
median(x2)
mode(x2)
sum(x2)

a <- 5.5
b <- 10
c <- a + b
cat("The Values are:", a, "and" , b, "\n" ,"and the total is:", c)

# now we are creating a character variable 
d <- "noman"
print(d)

class(a)

# now we are creating a numerical vector
z <- c(1.1, 9, 3.14) # concatenation : we are creating a vector
print(z)
class(z)

z2 <- c(1.1, 9, 3.14, "dhaka", "ramadan", TRUE)
print(z2)

z3 <- c(TRUE , FALSE, 2.2)

class(z2)

z4 <- c(z2, 3.4)
print(z4)

# another try
c(1, 2, 3, 4,5,6) * c(12, 10, 45)


#====

?pi
?class
?vector

?seq

seq(20,55, by = 2)
seq(from = 20, to = 55, by = 2)
seq(20, 55, by = 2)

seq(20, 55, length = 7)
seq(20, 55, 10)
seq(20, 55, length = 17)

seq( length.out = 10 , to = 55, from = 20)

?rep
rep(1:4, 2)
rep(1:4, each = 2)

rep(c(0, 1, 2), 10)


paste("Hello", "world!", "this", "is",  a, sep = "??????")

cat("Hello","??????", "world!", "??????", "this","??????" ,"is", "??????", a)
?paste

#=====================


y <- rnorm(1000)
print(y)
z <- rep(NA, 1000)
print(z)

c(y, z)

my_data <- sample(c(y, z), 100)

print(my_data)
my_data

# IDE - integrated development environment

is.na(my_data)

sum(    is.na(my_data)     )

#################################
######### named vectors #############
#################################

vect1 <- c(11,2,NA)
vect1
vect1[1] # R is a 1 indexed language

vect2 <- c(foo = 11,  bar = 2,   xyz = NA)
# there is no concept of Dictionary in R
vect2[2]
class(vect2)
vect2["bar"]

# =============== Vector vs Matrix =====================
my_vector <- 1:20
my_vector <- c(1,2,3,4,5,6,7,8,9,10,"11",12,13,14,15,16,17,18,19,20)
my_vector
class(my_vector)

dim(my_vector)
length(my_vector)

# but we can assign dim attribute to it
dim(my_vector) <- c(4, 5)
dim(my_vector)
my_vector

class(my_vector)

# directly creating a matrix
my_matrix2 <- matrix(1:20, nrow = 4, ncol = 5)
my_matrix2

patients <- c("Bill", "Gina", "Kelly", "Sean") 
patients

cbind(patients, my_matrix2)


patients2 <- c("Bill", "Gina", "Kelly", "Sean", "david") 
patients2

rbind(patients2, my_matrix2)

# ========= Data frame ===============

df1 <- data.frame(patients, my_matrix2)
# data.frame(patients2, my_matrix2)
df1



c("patient", "age", "weight", "bp", "rating", "test")
colnames(df1)

colnames(df1) <- c("patient", "age", "weight", "bp", "rating", "test")

colnames(df1)
df1

############# Links for today #################
https://www.spsanderson.com/steveondata/posts/2024-09-19/
https://bookdown.org/rdpeng/rprogdatascience/
https://leanpub.com/rprogramming
https://www.spsanderson.com/steveondata/posts/2024-09-19/
https://www.simonqueenborough.info/R/basic/lessons/Sequences_of_Numbers.html

###########################################
###########  14th March 2025 ##############
###########################################

# get current working directory
getwd()
# set working directory 
setwd("C:\\Users\\noman\\My Drive\\ABP\\ABP_MasterFiles\\datafiles")

plantsdf <- read.csv("C:\\Users\\noman\\My Drive\\ABP\\ABP_MasterFiles\\datafiles\\plants.csv")
plantsdf <- read.csv("plants.csv")

class(plantsdf)
# EDA commands (exploratory data analysis)
head(plantsdf,20)

tail(plantsdf)  
View(plantsdf)

dim(plantsdf)
str(plantsdf)
summary(plantsdf)

install.packages("skimr")
library(skimr)
skim(plantsdf)

# see colnames in the data frame
colnames(plantsdf)

# see the structure of the data frame
str(plantsdf)

head(plantsdf$)
table(plantsdf$Duration)

### work with cars dataset
data(cars)

head(cars)

plot(cars)

plot(cars$speed, cars$dist, 
    main = "Speed vs Distance", 
    xlab = "Speed", ylab = "Distance", 
    pch = 21, col = "blue")

?plot
plot(cars$speed, cars$dist)

boxplot(cars$speed)

############# dlpyr ############
# install.packages("dplyr")
library(dplyr)

mydf <- read.csv("2014-07-08.csv")
dim(mydf)
head(mydf)

# select() shows some specific columns

head(select(mydf, ip_id, package, country))
head(select(mydf, r_os:ip_id))
head(select(mydf, -(r_os:ip_id)))

# filter() shows some specific rows staisfying some conditions
head(filter(mydf, country == "IN"),15)
head(filter(mydf, package == "swirl", r_version == "3.1.1", country == "US"), 15)

head(filter(mydf, country == "US" | country == "IN")) # OR
filter(mydf, country == "US" & package == "swirl") # AND

# mutate() is used to create new columns

head(mutate(mydf, size_mb = size /1024/1024))
head(mutate(mydf, size_mb = size /1024/1024, size_kb = size/1024))

head(mutate(mydf, large_file = ifelse(size > 500000, "Yes", "No")))

# arrange() is used to sort the data frame
head(arrange(mydf, size))
head(arrange(mydf, desc(size)))
