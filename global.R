# Coursera - Developing Data Products - Week4 Peer-graded Assignment
# Author: "PhilAIUK"
# Date: "15/06/2019"
#
# This is the global logic of my Shiny web application
# It is used to access the data frame that I have previously reduced/processed with process.R

library(shiny)
library(leaflet)
library(dplyr)

setwd("/Users/Philippe1/DataCourse9Week4")
dfLondonTrees <- readRDS("./LondonTrees-Subset.rds")

# Icons creation for the map
treeIcon <- makeIcon(
    iconUrl = "./treeIcon32x32.png",
    iconWidth = 32, iconHeight = 32,
    iconAnchorX = 16, iconAnchorY = 16
)

homeIcon <- makeIcon(
    iconUrl = "./homeIcon32x32.png",
    iconWidth = 32, iconHeight = 32,
    iconAnchorX = 16, iconAnchorY = 16
)
