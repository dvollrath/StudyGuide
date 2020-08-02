library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################


#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Calculating Real GDP"),
  
  sidebarLayout(
    sidebarPanel(
      
      h4("Set parameters"),
      actionButton("reset", "Reset to baseline"),
      sliderInput("gooda1", h6("Apples in period 1"),
                  min = 0, max = 10, value = 2, step=.01),
      sliderInput("goodb1", h6("Bananas in period 1"),
                  min = 0, max = 10, value = 2, step=.01),
      sliderInput("papb1", h6("Price Apples/Price Bananas"),
                  min = 0, max = 10, value = 1, step=.01),
      sliderInput("gooda2", h6("Apples in period 2"),
                  min = 0, max = 10, value = 3, step=.01),
      sliderInput("goodb2", h6("Bananas in period 2"),
                  min = 0, max = 10, value = 3, step=.01),
      sliderInput("papb2", h6("Price Apples/Price Bananas"),
                  min = 0, max = 10, value = 2, step=.01)
      ), # end sidebar panel
    
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("Visually", 
                           br(),
                           p("The plot shows the actual bundles in each period (red dots), as well as the implied
                             budget constraints in each period (solid lines). The dashed lines are the implied budget
                             constraints using the *other* period prices. When calculating real GDP, we only want to
                             compare periods using the same prices, so you have to compare budgets that have the same
                             slope, which is what the dashed lines are for."),
                           br(),
                           plotOutput("realgdp",width = "100%") ),
                  tabPanel("Calculations", 
                           br(),
                           p("The calculations put a number on the distance between the lines in the prior figure. The Fisher
                             index combines the two ratios, as neither is more applicable than the other."),
                           br(),
                           h4("Value using period 1 prices:"),
                           textOutput("expend1p1"),
                           textOutput("expend2p1"),
                           br(),
                           textOutput("ratio1"),
                           br(),
                           h4("Value using period 2 prices:"),
                           textOutput("expend1p2"),
                           textOutput("expend2p2"),
                           br(),
                           textOutput("ratio2"),
                           br(),
                           h4("Fisher ratio:"),
                           textOutput("fisher"),
                           )
                  
              ) # end tabset

      ) # end main panel
  ) # end ui
)
#############################################################
# Define server logic ----
#############################################################
server <- function(input, output, session) {
  expend1p1 <- reactive({input$gooda1*input$papb1 + input$goodb1})
  expend2p1 <- reactive({input$gooda2*input$papb1 + input$goodb2})
  expend1p2 <- reactive({input$gooda1*input$papb2 + input$goodb1})
  expend2p2 <- reactive({input$gooda2*input$papb2 + input$goodb2})
  ratio1 <- reactive({expend2p1()/expend1p1()})
  ratio2 <- reactive({expend2p2()/expend1p2()})
  fisher <- reactive({sqrt(ratio2()*ratio1())})
  
  # Reset parameters
  observeEvent(input$reset, {
    updateSliderInput(session,'gooda1',value = 2)
    updateSliderInput(session,'goodb1',value = 2)
    updateSliderInput(session,'gooda2',value = 3)
    updateSliderInput(session,'goodb2',value = 3)
    updateSliderInput(session,'papb1',value = 1)
    updateSliderInput(session,'papb2',value = 2)    
  })
  
  
  output$expend1p1 <- renderText({ 
    paste("Period 1 expenditure: ",input$gooda1, "x",input$papb1,"+",input$goodb1,"x 1 = ",round(expend1p1(),digits=2) )
  })
  output$expend2p1 <- renderText({ 
    paste("Period 2 expenditure: ",input$gooda2, "x",input$papb1,"+",input$goodb2,"x 1 = ",round(expend2p1(),digits=2) )
  })
  output$expend1p2 <- renderText({ 
    paste("Period 1 expenditure: ",input$gooda1, "x",input$papb2,"+",input$goodb1,"x 1 = ",round(expend1p2(),digits=2) )
  })
  output$expend2p2 <- renderText({ 
    paste("Period 2 expenditure: ",input$gooda2, "x",input$papb2,"+",input$goodb2,"x 1 = ",round(expend2p2(),digits=2) )
  })
  output$ratio1 <- renderText({ 
    paste("Period 2/1 expend: ", round(expend2p1(),digits=2), "/", round(expend1p1(),digits=2), " = ", round(ratio1(),digits=2)  )
  })
  output$ratio2 <- renderText({ 
    paste("Period 2/1 expend: ", round(expend2p2(),digits=2), "/", round(expend1p2(),digits=2), " = ", round(ratio2(),digits=2)  )
  })
  output$fisher <- renderText({
    paste("Ratio real GDP 2/1: (", round(ratio1(),digits=2), "x", round(ratio2(),digits=2), ")^(.5) = ", round(fisher(),digits=2)  )
  })
  
  output$realgdp <- renderPlot(
    {
      a <- seq(0,10,.01)
      df <- data.frame(a)
      df$b1 <- input$goodb1 + input$gooda1*input$papb1 - input$papb1*df$a
      df$b1alt <- input$goodb1 + input$gooda1*input$papb2 - input$papb2*df$a
      df$b2 <- input$goodb2 + input$gooda2*input$papb2 - input$papb2*df$a
      df$b2alt <- input$goodb2 + input$gooda2*input$papb1 - input$papb1*df$a
      
      a <- input$gooda1
      pt1 <- data.frame(a)
      pt1$b1 <- input$goodb1
      
      a <- input$gooda2
      pt2 <- data.frame(a)
      pt2$b2 <- input$goodb2
      
      ggplot(df, aes(x=a)) +
        geom_line(aes(y = b1, color = "black"),size=1) +
        geom_line(aes(y = b2, color = "blue"),size=1) +
        geom_line(aes(y = b1alt, color = "black"),linetype="dashed",size=1) +
        geom_line(aes(y = b2alt, color = "blue"),linetype="dashed",size=1) +
        geom_point(data=pt1, aes(x=a,y = b1, color = "red"),size=5) +
        geom_point(data=pt2, aes(x=a,y = b2, color = "red"),size=5) +
        xlab("Apples") +
        ylab("Bananas") +
        theme_light() +
        ggtitle("Budget lines") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Period 1", "New BGP", "Period 2"),
                             guide = "legend")
    }
  ) # end realgdp
  
  
    
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)