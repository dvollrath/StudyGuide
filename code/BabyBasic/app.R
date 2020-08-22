library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################

base_ZX <- .2
base_gZ <- .02
base_Z <- 2
base_d <- .02
base_timeT <- 50

#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Simple Dynamic Model"),
  
  sidebarLayout(
    sidebarPanel(
      
      h4("Set parameters"),
      actionButton("reset", "Reset to baseline"),
      sliderInput("alt_ZX", h6('Initial Z/X ratio'),
                  min = 0, max = .5, value = base_ZX, step=.005),
      sliderInput("alt_Z", h6('Initial Z value'),
                  min = 0, max = 4, value = base_Z, step=.1),      
      sliderInput("alt_d", h6("Other stuff"),
                  min = 0, max = .2, value = base_d,step=.005),      
      sliderInput("alt_gZ", h6("Z growth rate \\(g_Z\\)"),
                  min = 0, max = .2, value = base_gZ,step=.005),      
      sliderInput("timeT", h6("Number of periods"),
                  min = 0, max = 300, value = base_timeT, step = 1)
      ), # end sidebar panel
    
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("Dynamics",
                           br(),
                           p("This figure describes how the ratio of Z/X determines
                             the growth rate of X, which is the upward sloping line. The horizontal 
                             line is the growth rate of Z. The
                             dynamics dictate that eventually the economy ends up at where those two lines cross.
                             The baseline dynamics are in blue given the starting parameters, the alternative in green, and the black dots
                             indicate the time path that X growth actually take. The red lines indicate
                             the location of the steady state ratio of Z/X."),
                           br(),
                           plotOutput("dyngraph",width = "100%") ),
                    tabPanel("Growth rate",
                           br(),
                           p("This plots the actual growth rate of X over time, in black.
                             The blue line is the steady state growth rate of productivity under the baseline, and
                             the green line is the steady state growth rate under your alternative parameters."),
                           br(),
                           plotOutput("gagraph",width = "100%") ),
                  tabPanel("Level",
                           br(),
                           p("The actual (log) level of X is in black. The blue line indicates the steady state
                             path of X under the baseline, and the green line is the steady state under the 
                             alternative parameters you set."),
                           br(),
                           plotOutput("lnagraph",width = "100%") )
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
    updateSliderInput(session,'alt_ZX',value = base_ZX)
    updateSliderInput(session,'alt_gZ',value = base_gZ)
    updateSliderInput(session,'timeT',value = base_timeT)
  })
  

  # Function to combine alternative and baseline inputs, generate dataframe
  # containing time series of outcomes
  GraphData <- reactive({
    t <- c(0:input$timeT) # vector of periods up to input time
    df <- data.frame(t) # create dataframe to hold outcomes
    lnZX <- log(input$alt_ZX)
    lnZ <- log(input$alt_Z)
    lnXbase <- log(base_Z) - log(base_gZ + base_d) # initial X along baseline ss
    lnXalt <- lnZ - log(input$alt_gZ + input$alt_d) # initial X along alt ss
    lnX <- lnZ - lnZX  # initial actual X
    
    for (i in t) {
      df$gX[i+1] <- exp(lnZX) - input$alt_d # actual growth rate of X
      df$lnX[i+1] <- lnX # capture level of actual X
      df$lnZ[i+1] <- lnZ # capture level of actua Z
      df$ZX[i+1] <- exp(lnZ)/exp(lnX)
      lnZ <- lnZ+input$alt_gZ # update Z with actual growth rate
      lnX <- lnX+df$gX[i+1] # update X with actual growth rate
      lnZX <- lnZ-lnX # update actual Z/X ratio
    }
    df$gXbase <- base_gZ # s.s. growth rate of X in baseline
    df$gXalt <- input$alt_gZ # s.s. growth rate of X in alt
    df$lnXbase <- lnXbase + df$gXbase*df$t
    df$lnXalt <- lnXalt + df$gXalt*df$t
    
    df$tick <- df$ZX
    return(df)
  })
  
  output$gagraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = gX, color = "black"),size=1) + 
        geom_line(aes(y = gXbase, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = gXalt, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Growth rate of X") +
        theme_light() +
        ggtitle("X growth rate over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New s.s.", "Baseline s.s."),
                             guide = "legend")
    }
  ) # end ga graph
 
  output$lnagraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = lnX, color = "black"),size=1) + 
        geom_line(aes(y = lnXbase, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = lnXalt, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Log of X") +
        #ylim(0, .1) +
        theme_light() +
        ggtitle("Log X level over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New s.s.", "Baseline s.s."),
                             guide = "legend")
    }
  ) # end ga graph
  
  output$dyngraph <- renderPlot(
    {
      tick <- seq(0,2,.01) # arbitrary ky values
      df <- data.frame(tick) # create dataframe
      df$gXbase <- df$tick - base_d
      df$gXalt <- df$tick - input$alt_d
      gZbase <- base_gZ
      gZalt <- input$alt_gZ
      ssbase <- base_gZ + base_d
      ssalt <- input$alt_gZ + input$alt_d
      
      ggplot(df, aes(x=tick)) +
        geom_line(aes(y = gXalt, color = "green"),size=2) + 
        geom_line(aes(y = gXbase, color="blue"), linetype="dashed",size=2) +
        geom_point(data=GraphData(),y=GraphData()$gX, color="black", size=3) +
        geom_hline(yintercept=gZbase, linetype="dotdash", color = "blue", size=1) +
        geom_hline(yintercept=gZalt, linetype="dotdash", color = "green", size=1) +
        geom_vline(xintercept=ssbase, linetype="dotdash", color = "red", size=1) +
        geom_vline(xintercept=ssalt, linetype="dotdash", color = "red", size=1) +
        xlab("Ratio Z/X") +
        ylab("Growth rates") +
        theme_light() +
        ylim(-.05,.3) +
        xlim(0,.5) +
        ggtitle("X dynamics") + 
        scale_color_identity(name = "Models",
                             breaks = c("green", "blue"),
                             labels = c("New", "Baseline"),
                             guide = "legend")
    }
  ) # end dyn graph  
  
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)