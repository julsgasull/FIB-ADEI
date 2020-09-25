# set working directory
setwd("~/Documents/uni/FIB-ADEI/labs/lab0")

# libraries
install.packages(c("car", "FactoMineR", "knitr"))
library(car)
library(FactoMineR)
library(knitr)

# import data
df<-read.table("green_tripdata_2016-01.csv",header=T, sep=",")

# play with data
dim(df)   # size of dataframe 
names(df) # list of variable names
str(df)   # object class and description

# create "mostra" aleatoria
set.seed(18091998)
sam<-as.vector(sort(sample(1:nrow(df),5000)))
head(df)      # take a look to the first rows/instances
df<-df[sam,]  # subset of rows _ my sample
summary(df)

# save the data
save(list=c("df"), file="my_taxi_row_sample.RData")