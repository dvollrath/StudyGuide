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
base_A <- 1
base_kalstar <- (base_sI/(base_gL+base_gA+base_delta))^(1/(1-base_alpha))
base_K <- base_kalstar*base_A
base_kystar <- base_sI/(base_gL+base_gA+base_delta)

#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Dynamics of K/AL Ratio"),
  
  mainPanel(
      plotOutput("gkalgraph",width = "100%"),
      
      hr(),
      
      h4("Set parameters"),
      
      fixedRow(
        column(6,
        sliderInput("alt_sI", h6('New capital share of GDP \\(s_I\\)'),
                    min = 0, max = 1, value = base_sI),
        sliderInput("alt_gL", h6("Population growth rate \\(g_L\\)"),
                    min = -.1, max = .1, value = base_gL),
        sliderInput("alt_gA", h6("Productivity gorwth rate \\(g_A\\)"),
                    min = -.1, max = .1, value = base_gA)
        ),
        column(6,
        sliderInput("alt_delta", h6("Depreciation rate \\(\\delta\\)"),
                    min = 0, max = 1, value = base_delta),
        sliderInput("alt_alpha", h6("Capital elasticity \\(\\alpha\\)"),
                    min = 0, max = 1, value = base_alpha),
        br(),
        actionButton("reset", "Reset all to baseline")
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
  })
    
  output$gkalgraph <- renderPlot(
    {
      kalstar = (input$alt_sI/(input$alt_gL + input$alt_gA + input$alt_delta))^(1/(1-input$alt_alpha))
      tick <- seq(0,12,.1) # arbitrary kal values
      df <- data.frame(tick) # create dataframe
      df$gk <- input$alt_sI/(df$tick^(1-input$alt_alpha))- input$alt_delta
      reverse = (input$alt_sI/(input$alt_delta+.12))^(1/(1-input$alt_alpha))
      
      ggplot(df, aes(x=tick)) +
        geom_line(aes(y = gk),size=1) + 
        geom_hline(yintercept=input$alt_gA+input$alt_gL, linetype="dashed", color = "black",size=1) +
        geom_vline(xintercept=kalstar, linetype="dotted", color = "black") +
        annotate(geom="text", x=9, y=input$alt_gA+input$alt_gL+.005, 
                 label="gA + gL",size=6) +
        annotate(geom="text", x=kalstar+1.6, y=.12, 
                 label="K/AL steady state",size=6) +
        annotate(geom="text", x=reverse-.4, y=.12, 
                 label="gK",size=6) +
        xlab("K/AL ratio") +
        ylab("Growth rates") +
        theme_light() +
        ylim(-.01,.12)
    }
  ) # end gky graph
  
  
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)