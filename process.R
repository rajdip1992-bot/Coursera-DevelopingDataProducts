# Coursera - Developing Data Products - Week4 Peer-graded Assignment
# Author: "PhilAIUK"
# Date: "15/06/2019"
#
# This is the process logic of my Shiny web application
# It is used to read the data file, clean the data and reduced it to only what I need
# This is to save time when launching the shiny app

library(shiny)
library(leaflet)
library(dplyr)
library(tidyr)
library(tidyverse)

# Loading the dataset
setwd("/Users/Philippe1/DataCourse9Week4")
dataFileUrl <- "https://data.london.gov.uk/download/local-authority-maintained-trees/c52e733d-bf7e-44b8-9c97-827cb2bc53be/london_street_trees_gla_20180214.csv"
dfLondonTrees <- read.csv(file=dataFileUrl, header=TRUE)

# Data formating for Longitude and Latitude
dfLondonTrees$longitude <- as.character(as.factor(dfLondonTrees$longitude))
dfLondonTrees$longitude <- as.numeric(dfLondonTrees$longitude)
dfLondonTrees$latitude <- as.character(as.factor(dfLondonTrees$latitude))
dfLondonTrees$latitude <- as.numeric(dfLondonTrees$latitude)

saveRDS(dfLondonTrees, "./LondonTrees-All.rds")

dfLondonTreesSub <- subset(dfLondonTrees, select = c(borough, display_name, longitude, latitude))

# Cleaning the data - Only keep the data we need
dfLondonTreesSub <- dfLondonTreesSub[dfLondonTreesSub$borough == "Barking " |
                                         dfLondonTreesSub$borough == "Barnet" |
                                         dfLondonTreesSub$borough == "Bromley" |
                                         dfLondonTreesSub$borough == "Camden" |
                                         dfLondonTreesSub$borough == "City of London" |
                                         dfLondonTreesSub$borough == "Ealing" |
                                         dfLondonTreesSub$borough == "Enfield" |
                                         dfLondonTreesSub$borough == "Greenwich" |
                                         dfLondonTreesSub$borough == "Harrow" |
                                         dfLondonTreesSub$borough == "Lambeth " |
                                         dfLondonTreesSub$borough == "Lewisham" |
                                         dfLondonTreesSub$borough == "Merton " |
                                         dfLondonTreesSub$borough == "Redbridge" |
                                         dfLondonTreesSub$borough == "Richmond" |
                                         dfLondonTreesSub$borough == "Southwark" |
                                         dfLondonTreesSub$borough == "Sutton" |
                                         dfLondonTreesSub$borough == "Tower Hamlets" |
                                         dfLondonTreesSub$borough == "Westminster",]

dfLondonTreesSub <- dfLondonTreesSub[dfLondonTreesSub$display_name == "Alder" |
                                         dfLondonTreesSub$display_name == "Apple" |
                                         dfLondonTreesSub$display_name == "Ash" |
                                         dfLondonTreesSub$display_name == "Beech" |
                                         dfLondonTreesSub$display_name == "Birch" |
                                         dfLondonTreesSub$display_name == "Black Locust" |
                                         dfLondonTreesSub$display_name == "Cherry" |
                                         dfLondonTreesSub$display_name == "Chestnut" |
                                         dfLondonTreesSub$display_name == "Chestnut/ Sweet Chestnut" |
                                         dfLondonTreesSub$display_name == "Cypress" |
                                         dfLondonTreesSub$display_name == "Elm" |
                                         dfLondonTreesSub$display_name == "Hawthorn" |
                                         dfLondonTreesSub$display_name == "Hazel" |
                                         dfLondonTreesSub$display_name == "Hornbeam" |
                                         dfLondonTreesSub$display_name == "Lime" |
                                         dfLondonTreesSub$display_name == "Maple" |
                                         dfLondonTreesSub$display_name == "Oak" |
                                         dfLondonTreesSub$display_name == "Other" |
                                         dfLondonTreesSub$display_name == "Pear" |
                                         dfLondonTreesSub$display_name == "Pine" |
                                         dfLondonTreesSub$display_name == "Plane" |
                                         dfLondonTreesSub$display_name == "Poplar" |
                                         dfLondonTreesSub$display_name == "Whitebeam" |
                                         dfLondonTreesSub$display_name == "Willow",]

saveRDS(dfLondonTreesSub, "./LondonTrees-Subset.rds")
