##################################################
## Homework 2
## Spatial Analysis with R Part 1: The Basics
##
## Type your answer below each prompt
##################################################

## Q1. Load the maps package into memory

library(maps)

## The maps package comes with a dataset called `world.cities`.

# What kind of object is 'world.cities'?
  
class(world.cities)

# How many rows and columns does `world.cities` have?

dim(world.cities)
# or
nrow(world.cities)
ncol(world.cities)

# What is the original data source of world.cities?
# Hint: datasets have help pages too

?world.cities

## What is the average population of all the world cities?

mean(world.cities$pop)

# Using `runif()`, generate 20 random numbers uniformly distributed between 100 and 200.

runif(20, min = 100, max = 200)

# Rewrite the following expression with pipes:
# You can use either the traditional pipe (`%>%`) from the
# magrittr package, or the more recent native pipe (`|>`)

sum(round(rnorm(n = 200, mean = 50, sd = 5)))

rnorm(n = 200, mean = 50, sd = 5) |> round() |> sum()



## Q4. Create a vector called `y` that contains all the odd numbers from 1 to 100.
## HINT: There are several ways to do this. If you get stuck feel free to ask Google for help.


## Q5. Write an expression that returns a vector containing the first 10 uppercase letters of the alphabet.

 
## Q6. Write an expression that returns a vector containing the first 10 lowercase letters of the alphabet.


## Q7. If you uncomment the following two lines and run them, you'll get an error. Fix it.

# z = 1:5
# z[TRUE,TRUE,FALSE,FALSE,TRUE]


## Q8. Generate 50 random numbers using a function like `runif()`, `rnorm()`, or `sample()`. Save 
## the results to a object called `rand_nums`.

 
## Q9. Find the mean of rand_nums.


## Q10. Write an expression that returns the elements of rand_nums that are bigger 
## than the average.

 
## Q11. Write an expression that returns the number of elements of rand_nums that are bigger 
## than the average.


