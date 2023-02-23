##################################################
## HOMEWORK 3
## Spatial Analysis with R Part 1: The Basics
##
## Type your answer below each prompt.
##################################################

## SETUP: LOAD SOME DATA FROM THE SAN FRANCISCO OPEN DATA PORTAL

## Run the following lines of code to import a selection of 311 calls from San Francisco.
## (for more info, see https://data.sfgov.org/resource/vw6y-z8j6)

## First, we define a URL to a CSV
url1 <- "https://data.sfgov.org/resource/vw6y-z8j6.csv?$select=service_request_id,requested_datetime,agency_responsible,service_name,service_subtype,address,neighborhoods_sffind_boundaries,source&$limit=100&$where=requested_datetime between '2023-02-21T00:00:00' and '2023-02-21T23:59:59'"

## Next, read in the data. (URLencode() removes spaces in the URL)
df <- read.csv(URLencode(url1))

## Finally, change the name of one of the columns
library(dplyr)
df <- df |> rename(neighborhood = neighborhoods_sffind_boundaries)

## Uncomment the following line to view the data frame in a View pane:

# View(df)

#############################################################################
## Q1. How many rows and how many columns does this data frame have?



#############################################################################
## Q02. Write an expression that returns the column names of this data frame.
##      HINT: Look for a function that returns the names of a data frame



#############################################################################
## Q03. Write an expression that returns the data frame sorted by the
##      responsible agency.



#############################################################################
## Q04. Write an expression that just returns three of columns (of your choice).



#############################################################################
## Q05. Write an expression that just returns 311 calls that were submitted by
## phone.
 


#############################################################################
## Q06. How many 311 calls were submitted by phone?



#############################################################################
## Q07. Write an expression that returns the number of calls per neighborhood,
## sorted alphabetically by neighborhood.



#############################################################################
## Q08. Write an expression that returns the number of calls per neighborhood,
## sorted by the number of calls.



#############################################################################
## Q09. What is the most common service requested?



#############################################################################
## Q10. What is the least common service requested?



