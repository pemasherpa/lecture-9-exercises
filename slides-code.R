### Lecutre 9: APIs ###
library(dplyr)

# Quick google maps example --------------------------
# install.packages('ggmap')


# Simple Spotify API example --------------------------
# Base URL for searching the API


# Parameters


# Query string

# Read in data



# Flattening data.frames ----------------
# Let's do something silly
people <- data.frame(names = c('Spencer', 'Jessica', 'Keagan'))
favorites <- data.frame(
  food = c('Pizza', 'Pasta', 'salad'), 
  music = c('Bluegrass', 'Indie', 'Electronic')
)

people$favorites <- favorites

# Flatten it!
flattened <- flatten(people)
