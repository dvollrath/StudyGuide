library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################
base_sI <- .2
base_gL <- .01
base_gA <- .02
base_delta <- .05
base_alpha <- .3
base_A <- 10
base_kalstar <- (base_sI/(base_gL+base_gA+base_delta))^(1/(1-base_alpha))
base_K <- base_kalstar*base_A
base_kystar <- base_sI/(base_gL+base_gA+base_delta)

#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Level of BGP"),
  
  mainPanel(
      
      #hr(),
      
      h4("Set parameters"),
      
      fixedRow(
        column(4,
        sliderInput("alt_sI", h6('New capital share of GDP \\(s_I\\)'),
                    min = 0, max = .5, value = base_sI, ticks = FALSE, step=.01),
        sliderInput("alt_gL", h6("Population growth rate \\(g_L\\)"),
                    min = -.05, max = .05, value = base_gL, ticks = FALSE, step=.01),
        sliderInput("alt_gA", h6("Productivity gorwth rate \\(g_A\\)"),
                    min = -.05, max = .1, value = base_gA, ticks = FALSE, step=.01),
        sliderInput("alt_delta", h6("Depreciation rate \\(\\delta\\)"),
                    min = 0, max = .1, value = base_delta, ticks = FALSE, step=.01),
        sliderInput("alt_alpha", h6("Capital elasticity \\(\\alpha\\)"),
                    min = 0, max = 1, value = base_alpha, ticks = FALSE, step=.01),
        sliderInput("alt_A", h6("Baseline productivity \\(A_0\\)"),
                    min = 0, max = 30, value = base_A, ticks = FALSE, step=.1),
        br(),
        actionButton("reset", "Reset all to baseline")
        ),
        column(8,
        plotOutput("lnygraph",width = "100%"),       
        )
      ) # end FluidRow
      ) # end main panel
  ) # end ui
#############################################################
# Define server logic ----
#############################################################
server <- function(input, output, session) {

  # Reset parameters
  observeEvent(input$reset, {
    updateSliderInput(session,'alt_sI',value = base_sI)
    updateSliderInput(session,'alt_gL',value = base_gL)
    updateSliderInput(session,'alt_gA',value = base_gA)
    updateSliderInput(session,'alt_delta',value = base_delta)
    updateSliderInput(session,'alt_alpha',value = base_alpha)
    updateSliderInput(session,'alt_A',value = base_A)
  })
    
  output$lnygraph <- renderPlot(
    {
      t <- c(0:100)
      df <- data.frame(t)
      kystar = input$alt_sI/(input$alt_gL+input$alt_gA+input$alt_delta)
      df$lny <- (input$alt_alpha/(1-input$alt_alpha))*log(kystar) + log(input$alt_A) + input$alt_gA*df$t

      ggplot(df, aes(x=t)) +
        geom_line(aes(y = lny),size=1) + 
        xlab("Time") +
        ylab("Log GDP per capita") +
        theme_light() +
        ylim(0,7.5)
    }
  ) # end gky graph
  
  
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)