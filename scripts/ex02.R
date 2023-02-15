##################################################
## Data Types
##################################################

## All R objects have a class

shoe_color = "brown"
class(shoe_color)

shoe_size = 5
class(shoe_size)

today = Sys.Date()
today
class(today)

## What happens if you add an integer to a date?

today + 1

#############################################
## VECTORS
#############################################

# Let's make some vectors!

a = 1:10
a

b = 21:30
b

e = c(100, 500)
e

# What happens if there isn't enough room on the console?

f = 20:150
f

## What does head() do?

head(f)

# How many elements in a vector?

length(f)

#############################################
## VECTOR ARITHMETIC
#############################################

a + 50

a + b

a ^ 2

b / 2

# What happens when you add two vectors of different length?

a
e
a + e

# Character vectors

flv = c("vanilla", "chocolate", "strawberry", "lemon", "butter pecan")
flv

#############################################
## SUMMARY STATS
#############################################

g = rnorm(500)

mean(g)

sd(g)

quantile(g)

#############################################
## ARE LOGICAL EXPRESSIONS VECTORIZED?
#############################################

my_nums = sample(1:10, 50, replace = TRUE)
my_nums

my_nums > 5

my_nums == 5

# How many numbers are less than or equal to 3?

my_nums <= 3

## Saving the results of Logical tests 

small_num_yn = (my_nums <= 3)
small_num_yn

## For discrete values, you can use a frequency table

my_months = sample(month.abb, 50, replace = TRUE)
my_months

table(my_months)

#############################################
## SUBSETTING VECTORS
#############################################

var = 1:10

var

## Get the 5th element

var[5]

## Redefine the 5th element

var[5] <- 555
var

## Get the 5th through 7th elements

var[5:7]

## Get the 7th thru 5th elements

var[7:5]

## You can also pass logical values

pick_me = c(T, T, F, F, F, T, F, T, F, T)
var[pick_me]

## Or better still, an expression that returns logical values

big_num = (var >= 8)
big_num

var[big_num]

## More compactly:

var[ var >= 8 ]

## Return elements of var that are divisible by 3:

var[var %% 3 == 0]

#############################################
## BASIC PLOTTING
#############################################

# Create vectors x and y

x = rnorm(n = 5000, mean = 100, sd = 15)
y = rnorm(n = 5000, mean = 100, sd = 5)

# Start with a scatter plot:

plot(x, y)

# Histogram shows the spread of your data:

hist(x)
hist(y)

# boxplot() accepts multiple vectors so you can compare the distributions side-by-side

boxplot(x, y)

# Let's make a circle!

theta = seq(from = 0, to = 2 * pi, by = 0.15)
x = cos(theta)
y = sin(theta)
plot(x, y, type = "b")

