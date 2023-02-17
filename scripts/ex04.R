##################################################
## ex03.R
##################################################

##################################################
## Explore a new package
##################################################

## First - install the agridat package using the RStudio Packages pane
## Thne you can proceed

library(agridat)

## Packages have help pages

?agridat

## Look at one of the datasets

head(archbold.apple)

summary(archbold.apple)

#################################################
## Function Practice
#################################################

## The seq() function can be used to return a sequence of evenly spaced numbers. 
 
## CHALLENGE 1: Construct a sequence of numbers from -10 to 10 by 0.2.
## TIP: read the help page for seq() by entering: ?seq
 

## CHALLENGE 2: Construct a sequence of exactly 500 numbers evenly spaced from 1 to 7. 
## Then write another expression which verifies it has 500 numbers.

 
## CHALLENGE 3: Simulate 100 rolls of a six-sided dice. View the distribution using a histogram.



#################################################
## PIPING
#################################################

# Suppose we wanted to:
# 
# 1) generate 500 evenly spaced numbers from 1 to 7
# 2) round them to two decimal places
# 3) sum them up
# 4) take the square root

x1 <- seq(from = 1, to = 7, length.out = 500)
x2 <- round(x1, 2) 
x3 <- sum(x2)
x4 <- sqrt(x3)
x4

# As a single nested expression:

sqrt(sum(round( seq(from = 1, to = 7, length.out = 500), 2)))

# With piping:
  
library(magrittr)

seq(from = 1, to = 7, length.out = 500) %>% 
  round(2) %>% 
  sum() %>% 
  sqrt()

## CHALLENGE 4: 

## There's a built-in dataset (vector) called sunspot.month. It contains the number of 
## sunspots from 1750 to the present. To read more about it, type ?sunspot.month

## Write an expression that will
##   i) round the number of sunspots to the nearest integer, 
##   ii) take the square root of those
##   iii) compute the standard deviation 
##
## HINT: The correct answer is 3.2.

