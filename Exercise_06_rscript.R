setwd("~/Desktop/data-biocomp/IBC_Exercise_06/")
getwd()


#Excercise question #1

iris <- read.csv("iris.csv")

# head works similarly
# usage : head(x,n=yL)
# where x is the variable you want the function to use
# y is the number of lines you want printed or redirected.

head(iris, n = 5L)



# Exercise quesetion #2

# for exercise 06 
# A) print the last 2 rows in the last two columns
# Use tail which requires tail(x, n = ___)
# x is an object, n is an integer,
iris <- read.csv("iris.csv")
iris[149:150, 4:5]

# B) report the number of observations for each species included in the data set
virginica=iris[iris[,5]=="virginica",]
print(virginica)
nrow(virginica)
versicolor=iris[iris[,5]=="versicolor",]
nrow(versicolor)
setosa=iris[iris[,5]=="setosa",]
nrow(setosa)


# C) sepal.width is > .35


altSepalwidth=iris[iris[,2]>3.5,]
nrow(altSepalwidth)

# D) write the data for the species setosa in a comma delimited file setosa.csv
setosa=iris[iris[,5]=="setosa",]
write.csv(setosa, file="setosa.csv")

# E) Calc mean, min and max of petal length for observations from virginica

virginica=iris[iris[,5]=="virginica",]
PetalLength=virginica[,3]
mean(PetalLength)
min(PetalLength)
max(PetalLength)
