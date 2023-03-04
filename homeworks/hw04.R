##################################################
## HOMEWORK 4
## Spatial Analysis with R Part 2: The Basics
##
## Type your answer below each prompt.
##################################################

# The end goal of this homework is to produce a map of San Francisco libraries overlaid on 
# top of San Francisco neighborhoods. The final product should look something like:




# Import the SF neighborhoods. For this you can use the following Neighborhoods boundaries GeoJSON file
# from DataSF:
# https://data.sfgov.org/resource/ajp5-b2md.geojson

library(sf)
sfnb_url <- "https://data.sfgov.org/resource/ajp5-b2md.geojson"
sfnb_sf <- st_read(sfnb_url)
# sfnb_sf |> View()

# What coordinate reference system are the neighborhood boundaries in?

st_crs(sfnb_sf)

## Plot the neighborhood using tmap
head(sfnb_sf)
library(tmap)
tm_shape(sfnb_sf) + tm_polygons(col = "nhood") + tm_layout(legend.show = FALSE)

# Import the San Francisco Libraries from the following CSV file:
# https://raw.githubusercontent.com/ajlyons/rspatial_bgs23/main/notebooks/data/sf_libraries_longlat.csv

sflib_url <- "https://raw.githubusercontent.com/ajlyons/rspatial_bgs23/main/notebooks/data/sf_libraries_longlat.csv"
sflib_df <- read.csv(sflib_url)

# How many libraries are there?

nrow(sflib_df)

# Construct a simple feature data frame from the libraries. You can assume the CRS is geographic coordinates with WGS84 (epsg = 4326)

names(sflib_df)
sflib_sf <- st_as_sf(sflib_df, coords = c("long", "lat"), crs = 4326)
sflib_sf

## Overlay the libraries on the neighborhoods
tm_shape(sfnb_sf) + 
  tm_polygons(col = "nhood") + 
  tm_shape(sflib_sf) + 
  tm_symbols(col = "black", size = 0.75) +
  tm_layout(legend.show = FALSE)


## Include a title
tm_shape(sfnb_sf) + 
  tm_polygons(col = "nhood") + 
  tm_shape(sflib_sf) + 
  tm_symbols(col = "black", size = 0.75) +
  tm_layout(title = "San Francisco Public Libraries",
            legend.show = FALSE) 



