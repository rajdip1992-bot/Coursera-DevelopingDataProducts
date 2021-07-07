# Coursera-DevelopingDataProducts
Assignment for the week 4 of the training

What my GitHub repository contains
It contains the following files:

ui.R: user-interface definition of my Shiny web application
server.R: server logic of my Shiny web application. It uses the global.r file to access the data frame (dfLondonTrees) already cleaned and reduced
global.R: global logic of my Shiny web application. It is used to access the data frame that I have previously reduced/processed with process.R
process.R: the process logic of my Shiny web application. It is used to read the data file, clean the data and reduced it to only what I need. This is to save time when launching the shiny app
Documentation
I live in London and wanted to use data from that city for that assignement.
On the London Datastore website, I selected data showing the Local Authority Maintained Trees. It is collating London’s tree data into one open source place to get a picture of London’s trees. The data contains location and species information for over 700,000 trees.

My Shiny App
Link to my Shiny App: https://philaiuk.shinyapps.io/DataCourse9Week4-ShinyApp/

On the right column, you will find displayed a map presenting:

The trees of the London borough and specie(s) you have selected in the left column
You can zoom in and out in order to see the clusters of trees in the area
At the tree level, you can click on the Tree icon to pop-up further information (i.e. tree specie, borough)
On the left column, you will find:

a selectInput object to select the London borough for which you wish to see the list of trees
a selectInput object to select the Tree species to display. If you select All, all species of trees in the borough will be displayed.
a checkboxInput object to select if you wish my home location to be displayed on the map or not
