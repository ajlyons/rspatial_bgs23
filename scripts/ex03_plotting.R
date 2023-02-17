#############################################
## BASIC PLOTTING
#############################################

# Create vectors x and y

x = rnorm(n = 5000, mean = 100, sd = 15)
y = rnorm(n = 5000, mean = 100, sd = 5)

# Start with a scatter plot:

plot(x, y)

# Add some optional arguments

plot(x, y, pch=16, col="#ff000028", cex=0.5)

# Histogram shows the spread of your data:

hist(x)
hist(y)

# boxplot() accepts multiple vectors so you can compare the distributions side-by-side

boxplot(x, y)

## Make cosine wave

xvals = 4 * pi * (0:100)/100
yvals = cos(xvals)

## Plot line

plot(x = xvals, y = yvals, type = "l")

## Plot both points and line:

plot(x = xvals, y = yvals, type = "b")

# Let's make a circle!

theta = seq(from = 0, to = 2 * pi, by = 0.15)
x = cos(theta)
y = sin(theta)
plot(x, y, type = "b")

## Give it a 1:1 aspect ratio

plot(x, y, type = "b", asp = 1)

## Mystery plot (run all the commands at once): 

f1u <- function(x) ifelse ((abs(x) >  3 & abs(x) <= 7), 3*sqrt(1-(x/7)^2), 0)
f1d <- function(x) ifelse ((abs(x) >= 4 & abs(x) <= 7), -3*sqrt(1-(x/7)^2), 0)
f2u <- function(x) ifelse ((abs(x) > 0.50 & abs(x) < 0.75), 3*abs(x)+0.75, 0)
f2d <- function(x) ifelse ((abs(x) > -4 & abs(x) < 4), abs(x/2)-(3*sqrt(33)-7)*x^2/112-3 + sqrt(1-(abs(abs(x)-2)-1)^2), 0)
f3u <- function(x) ifelse ((x > -0.5 & x < 0.5), 2.25, 0)
f4u <- function(x) ifelse ((abs(x) >  1 & abs(x) <= 3), 6 * sqrt(10)/7 + (1.5 - 0.5 * abs(x)) * sqrt(abs(abs(x)-1)/(abs(x)-1)) - 6 * sqrt(10) * sqrt(4-(abs(x)-1)^2)/14, 0)
f5u <- function(x) ifelse ((abs(x) >= 0.75 & abs(x) <= 1), 9-8*abs(x), 0)
fu <- function (x) f1u(x) + f2u(x) + f3u(x) + f4u(x) + f5u(x)
fd <- function (x) f1d(x) + f2d(x)
bm <- function(r,x) ifelse(r%%2==0, fu(x), fd(x))
opar <- par(bg="#02233f", mar=c(0,0,0,0))
plot(x=seq(-7,7,0.065), y=Vectorize(bm)(1:216, seq(-7,7,0.065)), col="#999900", type="l", lwd=3)
par(opar)


## Challenge Question

## Recreate the plot in the following image:
## https://ajlyons.github.io/rspatial_bgs23/slides/images/exercise3_plot.png

## Answer: http://bit.ly/3KdRJGk

