library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel(h1('My Shiny App',align = 'Left') ),  
  sidebarLayout(
    sidebarPanel(align = 'left', 
                 h1('Installation'),
                 p("Here is where some text goes.",
                   style = "font-family: 'times'; font-si16pt"),
                 p(strong("Bold text.")),
                 p(em("Italicized (i.e, emphasized) text.")),
                 p(code("install.package shiny")),
                 div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style = color:blue' to div", style = "color:blue"),
                 br(),
                 img(src = 'bigorb.png', height = 72, width = 72)
    ),  
    mainPanel(h1("Main Panel with First level title"),
              h2("Second level title"),
              p("span does the same thing as div, but it works with",
                span("groups of words", style = "color:blue"),
                "that appear inside a paragraph.")
    )
  )
))