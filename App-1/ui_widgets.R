# ui.R

shinyUI(fluidPage(
  titlePanel("Basic widgets"),
  
  fluidRow(
    
    column(3,
           h3("Buttons"),
           actionButton("action", label = "GO"),
           br(),
           br(), 
           submitButton("Submit")),
    
    column(3,
           h3("Single checkbox"),
           checkboxInput("checkbox", label = "Build", value = TRUE)),
    
    column(3, 
           checkboxGroupInput("checkGroup", 
                              label = h3("Checkbox group"), 
                              choices = list("Choice 1" = 1, 
                                             "Choice 2" = 2, "Choice 3" = 3, "Tennis" = 4),
                              selected = 1)),
    
    column(3, 
           dateInput("date", 
                     label = h3("Date input"), 
                     value = "2014-01-01"))   
  ),
  
  fluidRow(
    
    column(3,
           dateRangeInput("dates", label = h3("Date range"))),
    
    column(3,
           fileInput("file", label = h3("File input"))),
    
    column(3, 
           h3("Help text"),
           helpText("Note: help text isn't a true widget,", 
                    "but it provides an easy way to add text to",
                    "accompany other widgets.")),
    
    column(3, 
           numericInput("num", 
                        label = h3("Numeric input"), 
                        value = 10))   
  ),
  
  fluidRow(
    
    column(3,
           radioButtons("radio", label = h3("Radio buttons"),
                        choices = list("Choice 1" = 1, "Choice 2" = 2,
                                       "Choice 3" = 3),selected = 3)),
    
    column(3,
           selectInput("select", label = h3("Select box"), 
                       choices = list("Choice 1" = 1, "Choice 2" = 2,
                                      "Choice 3" = 3, "Baseball" = 4), selected = 1)),
    
    column(3, 
           sliderInput("slider1", label = h3("Percent"),
                       min = 0, max = 100, value = 50),
           sliderInput("slider2", label = h3("Proportion"),
                       min = 0, max = 1, value = .750),
           sliderInput("slider3", label = h3("Range"),
                       min = 0, max = 100, value = c(25, 75))
    ),
    
    column(3, 
           textInput("text", label = h3("Text input"), 
                     value = "What do you want..."))   
  )
  
))