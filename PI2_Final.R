setwd('/Users/imahamat/Documents/IBO/Projets/pi2/Automated-Comparable-Analysis')

# Librabies
library(tidyverse)  # data manipulation
library(cluster)    # clustering algorithms
library(factoextra) # clustering algorithms & visualization
library(FactoMineR)
library(gridExtra)
library(fpc)
library(dbscan)
library(mclust)
library(adamethods)
library(car) # Companion to Applied Regression
library(caret)
library(randomForest)
library(mlbench)
library(fpc)
library(knitr) # package for building complex tables 
library(kableExtra)
library(viridisLite) # color map package



# df = read.csv("ListS&P500.csv", row.names = 1, sep = ';')
# df2 = read.csv("ListS&P500_Tickers.csv", row.names = 1, sep = ';')

# Omit non available values if there are any left (pre-treated dataset)

# df <- na.omit(df)
# df2 <- na.omit(df2)
# Feature scaling through standardization is an important preprocessing step for many machine learning algorithms. Standardization involves rescaling the    features such that they have the properties of a standard normal distribution with a mean of 0 and a standard deviation of 1. It helps to normalise the      data within a particular range and it can also help in speeding up the calculations in the algorithms.
# df <- scale(df)
# df2 <- scale(df2)
# 

Dataset = function(file)
{
  # n is the number of outliers to remove
  df = read.csv(file, row.names = 1, sep = ';')
  # Omit non available values if there are any left (pre-treated dataset)

  df <- na.omit(df)
  
  # Feature scaling through standardization is an important preprocessing step for many machine learning algorithms. Standardization involves rescaling the    features such that they have the properties of a standard normal distribution with a mean of 0 and a standard deviation of 1. It helps to normalise the      data within a particular range and it can also help in speeding up the calculations in the algorithms.
  # df <- scale(df)
  
  return (df)
}

df = Dataset("ListS&P500.csv")
df2 = Dataset("ListS&P500_Tickers.csv")

## Detect outliers

# Multivariate Model Approach

new.df = as.data.frame.matrix(df)

mod <- lm(new.df$Pre.Tax.ROE ~ ., data = new.df)













