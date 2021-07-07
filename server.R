# Coursera - Developing Data Products - Week4 Peer-graded Assignment
# Author: "PhilAIUK"
# Date: "15/06/2019"
#
# This is the server logic of my Shiny web application
# It uses the global.r file to access the data frame (dfLondonTrees) already cleaned and reduced


# Define server logic required to draw a histogram
function(input, output) {

    dataTrees <- reactive({
        # Filter data based on Borough and Tree species selected by the user
        if (input$treeType == "All") {
            x <- dfLondonTrees[dfLondonTrees$borough == input$borough,]
        }
        else
            x <- dfLondonTrees[dfLondonTrees$borough == input$borough & dfLondonTrees$display_name == input$treeType,]
    })
    
    output$treeMap <- renderLeaflet({
        df <- dataTrees()
        if (input$iconHome) {
            tree <- leaflet(data = df) %>%
                addTiles() %>%
                addMarkers(lng = ~longitude,
                       lat = ~latitude,
                       icon = treeIcon,
                       popup = ~paste(
                           'Tree Species: <strong>', display_name, '</strong><br>',
                           'Borough: <strong>', borough, '</strong><br>'),
                       clusterOptions = markerClusterOptions()) %>%
                addMarkers(lng = -0.065105,
                           lat = 51.495771,
                           icon = homeIcon,
                           popup = "Home")
        }
        else
        {
            tree <- leaflet(data = df) %>%
                addTiles() %>%
                addMarkers(lng = ~longitude,
                           lat = ~latitude,
                           icon = treeIcon,
                           popup = ~paste(
                               'Tree Species: <strong>', display_name, '</strong><br>',
                               'Borough: <strong>', borough, '</strong><br>'),
                           clusterOptions = markerClusterOptions())
        }
        tree
    })
}
