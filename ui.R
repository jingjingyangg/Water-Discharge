library(shiny)
library(dplyr)
library(dygraphs)
library(xts)

shinyUI(fluidPage(
  titlePanel("Water Discharge"),
  
  p("Enter the site ID (e.g. 01449000 for Lehigh River at Lehighton, PA), and select the date of interest"),
  
  sidebarLayout(position = "right",
                
                sidebarPanel( 
                  textInput("site", label = h5("Enter the site ID here")),
                  
                  dateRangeInput("dates", label = h5("Date range")),
                  
                  actionButton("button", label = "Plot")
                ),
                
                
                mainPanel(
                  dygraphOutput("graph")
                )
  )
  
))