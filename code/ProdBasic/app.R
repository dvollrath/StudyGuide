library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################
base_lambda <- .8
base_phi <- 0
base_R_0 <- 1
base_A_0 <- 2
base_theta <- .1
base_gR <- .02
base_timeT <- 50

#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Basic Productivity Model"),
  
  sidebarLayout(
    sidebarPanel(
      
      h4("Set parameters"),
      actionButton("reset", "Reset to baseline"),
      sliderInput("alt_R", h6('Initial researchers \\(R_0\\)'),
                  min = 0, max = 10, value = base_R_0, step=.01),
      sliderInput("alt_lambda", h6("Research elasticity \\(\\lambda\\)"),
                  min = 0, max = 1, value = base_lambda),
      sliderInput("alt_phi", h6("Productivity effect \\(\\phi\\)"),
                  min = -2, max = 1, value = base_phi,step=.01),
      sliderInput("alt_theta", h6("Base parameter \\(\\theta\\)"),
                  min = 0, max = 1, value = base_theta,step=.01),
      sliderInput("alt_gR", h6("Researcher growth \\(g_R\\)"),
                  min = 0, max = .2, value = base_gR,step=.005),      
      sliderInput("timeT", h6("Number of periods"),
                  min = 0, max = 300, value = base_timeT, step = 1)
      ), # end sidebar panel
    
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("Prod growth rate",
                           br(),
                           p("This plots the actual growth rate of produtivity over time, in black.
                             The blue line is the BGP growth rate of productivity under the baseline, and
                             the green line is the BGP growth rate under your alternative parameters."),
                           br(),
                           plotOutput("gagraph",width = "100%") ),
                  tabPanel("Productivity level",
                           br(),
                           p("The actual log level of productivity is in black. The blue line indicates the BGP
                             path of productivity under the baseline, and the green line is the BGP under the 
                             alternative parameters you set."),
                           br(),
                           plotOutput("lnagraph",width = "100%") ),
                  tabPanel("Productivity Dynamics",
                           br(),
                           p("This figure describes how the ratio of \\(R^{\\lambda}/A^{1-\\phi}\\) determines
                             the growth rate of productivity, which is the upward sloping line. The horizontal 
                             lines are the scaled researcher growth rate, \\(g_R\\lambda/(1-\\phi)\\). The
                             dynamics dictate that eventually the economy ends up at where those two lines cross.
                             The baseline dynamics are in blue, the alternative in green, and the black dots
                             indicate the time path that productivity growth actually take. The red lines indicate
                             the location of the steady state ratio of researchers to productivity."),
                           br(),
                           plotOutput("dyngraph",width = "100%") )
      ) # end tabset

      ) # end main panel
  ) # end ui
)
#############################################################
# Define server logic ----
#############################################################
server <- function(input, output, session) {

  # Reset parameters
  observeEvent(input$reset, {
    updateSliderInput(session,'alt_R',value = base_R_0)
    updateSliderInput(session,'alt_A',value = base_A_0)
    updateSliderInput(session,'alt_lambda',value = base_lambda)
    updateSliderInput(session,'alt_phi',value = base_phi)
    updateSliderInput(session,'alt_theta',value = base_theta)
    updateSliderInput(session,'timeT',value = base_timeT)
    updateSliderInput(session,'alt_gR',value = base_gR)
  })
  

  # Function to combine alternative and baseline inputs, generate dataframe
  # containing time series of outcomes
  GraphData <- reactive({
    t <- c(0:input$timeT) # vector of periods up to input time
    df <- data.frame(t) # create dataframe to hold outcomes
    lnR <- log(input$alt_R)
    
    gAbase <- base_gR*base_lambda/(1-base_phi) # base s.s. growth rate
    Astarbase <- (base_theta*base_R_0^(base_lambda)/(gAbase))^(1/(1-base_phi)) # base init A
    lnA <- log(Astarbase) # initialize actual A series
    lnAstarbase <- log(Astarbase) # log for graphing
    gAalt <- input$alt_gR*input$alt_lambda/(1-input$alt_phi) # alt s.s. growth rate
    Astaralt <- (input$alt_theta*input$alt_R^(input$alt_lambda)/(gAalt))^(1/(1-input$alt_phi))
    lnAstaralt <- log(Astaralt)
    
    for (i in t) {
      df$ga[i+1] <- input$alt_theta*exp(lnR)^(input$alt_lambda)/exp(lnA)^(1-input$alt_phi)
      df$lnA[i+1] <- lnA
      df$lnR[i+1] <- lnR
      lnR <- lnR+input$alt_gR
      lnA <- lnA+df$ga[i+1]
    }
    df$gabase <- base_gR*base_lambda/(1-base_phi)
    df$gaalt <- input$alt_gR*input$alt_lambda/(1-input$alt_phi)
    df$lnAbase <- lnAstarbase + df$gabase*df$t
    df$lnAalt <- lnAstaralt + df$gaalt*df$t
    
    df$tick <- df$ga/input$alt_theta
    return(df)
  })
  
  output$gagraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = ga, color = "black"),size=1) + 
        geom_line(aes(y = gabase, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = gaalt, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Growth rate of productivity") +
        theme_light() +
        ggtitle("Produtcivity growth over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end ga graph
 
  output$lnagraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = lnA, color = "black"),size=1) + 
        geom_line(aes(y = lnAbase, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = lnAalt, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Log of productivity") +
        #ylim(0, .1) +
        theme_light() +
        ggtitle("Produtcivity level over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end ga graph
  
  output$dyngraph <- renderPlot(
    {
      tick <- seq(0,1,.01) # arbitrary ky values
      df <- data.frame(tick) # create dataframe
      gRbase <- base_gR*base_lambda/(1-base_phi)
      gRalt <- input$alt_gR*input$alt_lambda/(1-input$alt_phi)
      df$gAbase <- base_theta*df$tick
      df$gAalt <- input$alt_theta*df$tick
      ssbase <- (base_gR*base_lambda/(1-base_phi))/base_theta
      ssalt <- (input$alt_gR*input$alt_lambda/(1-input$alt_phi))/input$alt_theta
      
      ggplot(df, aes(x=tick)) +
        geom_line(aes(y = gAalt, color = "green"),size=1) + 
        geom_line(aes(y = gAbase, color="blue"), linetype="dashed",size=1) +
        geom_point(data=GraphData(),y=GraphData()$ga, color="black") +
        geom_hline(yintercept=gRbase, linetype="dashed", color = "blue") +
        geom_hline(yintercept=gRalt, linetype="dashed", color = "green") +
        geom_vline(xintercept=ssbase, linetype="dotted", color = "red") +
        geom_vline(xintercept=ssalt, linetype="dotted", color = "red") +
        xlab("Relative R/A (R^l/A^1-p)") +
        ylab("Growth rates") +
        theme_light() +
        ylim(0,.10) +
        ggtitle("Productivity growth dynamics") + 
        scale_color_identity(name = "Models",
                             breaks = c("green", "blue"),
                             labels = c("New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end dyn graph  
  
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)