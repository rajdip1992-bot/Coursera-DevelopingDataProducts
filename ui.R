# Coursera - Developing Data Products - Week4 Peer-graded Assignment
# Author: "PhilAIUK"
# Date: "15/06/2019"
#
# This is the user-interface definition of my Shiny web application
#

# Define UI for application that draws a histogram
ui <- fluidPage(
    titlePanel("Tree species and location - London (United Kingdom)"),
    fluidRow(
        column(3,
               wellPanel(
                   h4("Select the borough and tree species"),
                   selectInput("borough", "London borough:",
                               c("Barking ","Barnet","Bromley","Camden","City of London","Ealing","Enfield","Greenwich","Harrow","Lambeth ","Lewisham","Merton ","Redbridge","Richmond","Southwark","Sutton","Tower Hamlets","Westminster")
                   ),
                   selectInput("treeType", "Tree species name:",
                               c("All","Alder","Apple","Ash","Beech","Birch","Black Locust","Cherry","Chestnut","Chestnut/ Sweet Chestnut","Cypress","Elm","Hawthorn","Hazel","Hornbeam","Lime","Maple","Oak","Other","Pear","Pine","Plane","Poplar","Whitebeam","Willow")
                   ),
                   checkboxInput("iconHome", "Show my home location:", TRUE)
               )
        ),
        column(9,
               leafletOutput("treeMap")
               )
        )
)

