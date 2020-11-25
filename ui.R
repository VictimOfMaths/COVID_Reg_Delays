library(shiny)

ui <- fluidPage(tags$style(
  ".irs-bar {",
  "  border-color: transparent;",
  "  background-color: transparent;",
  "}",
  ".irs-bar-edge {",
  "  border-color: transparent;",
  "  background-color: transparent;",
  "}"
),
  
  titlePanel("Exploring registration delays in ONS mortality data"),
  
  sidebarPanel(selectInput('LA', 'Select Area', 
                           c("England & Wales", "England", "Wales", 
                             sort(as.character(unique(data$name)))), 
                           multiple=FALSE, selected="England"),
               selectInput('plottype', 'Select plot', c("Delays by week"=1,
                                                        "Lags over time"=2,
                                                        "Overall registration delays"=3)),
               sliderInput('plotweek', 'Select registration week', min=16, 
                           max=max(data$week), value=max(data$week), step=1),
               radioButtons('plotcause', "Select cause of death", choices=c("All causes", "COVID 19", "Other causes"), 
                            inline=TRUE)),
               mainPanel(
                 plotOutput('plot')
               )
            
  )