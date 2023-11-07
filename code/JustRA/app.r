library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################
base_lambda <- .8
base_phi <- 0
base_theta <- .1
base_gR <- .02


#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Dynamics of Productivity Growth"),
  
  mainPanel(
      
      #hr(),
      
      h4("Set parameters"),
      
      fixedRow(
        column(4,
        sliderInput("alt_lambda", h6('Research elasticity \\(\\lambda\\)'),
                    min = 0, max = 1, value = base_lambda, ticks = FALSE, step=.01),
        sliderInput("alt_phi", h6("Productivity effect \\(\\phi\\)"),
                    min = -.35, max = .95, value = base_phi, ticks = FALSE, step=.01),
        sliderInput("alt_theta", h6("Scaling parameter \\(\\theta\\)"),
                    min = .01, max = .3, value = base_theta, ticks = FALSE, step=.01),
        sliderInput("alt_gR", h6("Researcher growth \\(g_L\\)"),
                    min = 0, max = .1, value = base_gR, ticks = FALSE, step=.01),
        br(),
        actionButton("reset", "Reset all to baseline")
        ),
        column(8,
        plotOutput("RAgraph",width = "100%"),       
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
    updateSliderInput(session,'alt_lambda',value = base_lambda)
    updateSliderInput(session,'alt_phi',value = base_phi)
    updateSliderInput(session,'alt_gR',value = base_gR)
    updateSliderInput(session,'alt_theta',value = base_theta)
  })
    
  output$RAgraph <- renderPlot(
    {
      RAstar = (input$alt_gR*input$alt_lambda)/(input$alt_theta*(1-input$alt_phi))
      tick <- seq(0,.5,.01) # arbitrary RA values
      df <- data.frame(tick) # create dataframe
      df$gA <- (1-input$alt_phi)*input$alt_theta*df$tick
      
      ggplot(df, aes(x=tick)) +
        geom_line(aes(y = gA),size=1) + 
        geom_hline(yintercept=input$alt_lambda*input$alt_gR, linetype="dashed", color = "black",size=1) +
        geom_vline(xintercept=RAstar, linetype="dotted", color = "black") +
        annotate(geom="text", x=.45, y=input$alt_lambda*input$alt_gR+.002, 
                 label=expression(lambda*g[R]),size=4) +
        annotate(geom="text", x=RAstar+.05,y = .07, 
                 label=expression(paste(L^{lambda}/A^{1-phi}," Steady State")),size=4) +
        annotate(geom="text", x=.45, y=(1-input$alt_phi)*input$alt_theta*.45+.005, 
                 label=expression((1-phi)*g[A]),size=4) +
        xlab(expression(L^{lambda}/A^{1-phi}) ) +
        ylab("Growth rates") +
        theme_light() +
        xlim(0,.5) +
        ylim(0,.075)
    }
  ) # end gky graph
  
  
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)