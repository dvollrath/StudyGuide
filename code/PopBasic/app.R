library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################
base_gL <- .01
base_gamma <- -.0
base_gA <- .02
base_beta <- .3
base_X <- 5
base_A <- 5
base_L <- 5
base_sR <- .01
base_sX <- .01
base_timeT <- 100

#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Resource and Population Model"),
  
  sidebarLayout(
    sidebarPanel(
      
      h4("Set parameters"),
      actionButton("reset", "Reset to baseline"),
      sliderInput("alt_gamma", h6("Population growth parameter \\(\\gamma\\)"),
                  min = -3, max = 3, value = base_gamma, step=.01),
      sliderInput("alt_gL", h6("Initial pop growth rate \\(g_L\\)"),
                  min = -.02, max = .04, value = base_gL, step=.001),
      sliderInput("alt_gA", h6("Productivity growth rate \\(g_A\\)"),
                  min = -.1, max = .1, value = base_gA,step=.001),
      sliderInput("alt_beta", h6("Land elasticity \\(\\beta\\)"),
                  min = 0, max = .5, value = base_beta, step=.01),
      sliderInput("alt_sX", h6("Extraction rate \\(s_X\\)"),
                  min = 0, max = .1, value = base_sX, step=.001),
      sliderInput("alt_sR", h6("Replenish rate \\(s_R\\)"),
                  min = 0, max = .1, value = base_sR, step=.001),
      sliderInput("alt_A", h6("Initial productivity \\(A_0\\)"),
                  min = 0, max = 10, value = base_A, step = 0.1),
      sliderInput("alt_L", h6("Initial population \\(L_0\\)"),
                  min = 0, max = 10, value = base_L,step = 0.1),      
      sliderInput("alt_X", h6("Initial resource stock \\(X_0\\)"),
                  min = 0, max = 10, value = base_X, step = 0.1),
      sliderInput("timeT", h6("Number of periods"),
                  min = 0, max = 600, value = base_timeT, step = 1)
      ), # end sidebar panel
    
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("Log GDP p.c.", 
                           br(),
                           p("Production in this simulation involves only resources, productivity, and people. With
                             \\(Y = X^{\\beta}(AL)^{1-\\beta}\\). This eliminates some transitional growth due to 
                             capital accumulation, but keeps the interaction of resources and population."),
                           br(),
                           p("The blue line is the baseline path, and the black line is the alternative path given the
                             parameters you choose. With zero population response (the baseline) the paths shown are
                             BGPs; there is no transitional growth given there is no capital. Once you add population
                             effects from GDP per capita, there really isn't a BGP any more because population growth
                             evolves continuously."),
                           br(),
                           plotOutput("lnygraph",width = "100%") ),
                  tabPanel("Log resources p.c.", 
                           br(),
                           p("Resources are allowed to be affected by both an extraction rate \\(s_X\\) and a
                             replenishment rate \\(s_R\\), so that \\(g_X=s_R-s_X\\). Nonrenewables simply have
                             an extraction rate higher than their replenishment rate. A fixed resource, as we 
                             modelled land, has extraction = replenishment. You could also think of an alternate
                             economy with renewables where replenishment > extraction."),
                           br(),
                           plotOutput("lnxgraph",width = "100%") ),
                  tabPanel("Population growth", 
                           br(),
                           p("Population growth is allowed to be affected by GDP per capita, with \\(g_L=y^{\\gamma}\\).
                             If \\(\\gamma\\) is positive, then we have the Malthusian response of higher
                             population growth with higher income, and if negative the modern demographic response of
                             lower population growth with higher income."),
                           br(),
                           plotOutput("glgraph",width = "100%") ),
                  tabPanel("GDP p.c. growth", 
                           br(),
                           p("GDP per capita growth depends on a race between productivity growth versus population growth
                             and resource extraction. The Malthusian population response will make this race harder to
                             win, while modern demographics make this easier to win."),
                           br(),
                           plotOutput("gygraph",width = "100%") )
                  
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
    updateSliderInput(session,'timeT',value = base_timeT)
    updateSliderInput(session,'alt_gamma',value = base_gamma)
    updateSliderInput(session,'alt_gL',value = base_gL)
    updateSliderInput(session,'alt_gA',value = base_gA)
    updateSliderInput(session,'alt_beta',value = base_beta)
    updateSliderInput(session,'alt_A',value = base_A)
    updateSliderInput(session,'alt_L',value = base_L)
    updateSliderInput(session,'alt_X',value = base_X)
    updateSliderInput(session,'alt_sX',value = base_sX)
    updateSliderInput(session,'alt_sR',value = base_sR)
  })
  # Function to combine alternative and baseline inputs, generate dataframe
  # containing time series of outcomes
  GraphData <- reactive({
    t <- c(0:input$timeT) # vector of periods up to input time
    df <- data.frame(t) # create dataframe to hold outcomes
  
    lnL <- log(input$alt_L)
    lnA <- log(input$alt_A)
    lnx <- log(input$alt_X/input$alt_L)
    X <- input$alt_X
    lny <- (1-input$alt_beta)*(lnA+3) -(input$alt_beta)*lnL +(input$alt_beta)*log(input$alt_sX*X)
    gL_param <- input$alt_gL/exp(lny)^(input$alt_gamma)
    lnybase <- (1-base_beta)*(log(base_A)+3) -(base_beta)*log(base_L) +(base_beta)*log(base_sX*base_X)
    lnxbase <- log(base_X)-log(base_L)
    
    for (i in t) {
      df$gL[i+1] <- gL_param*exp(lny)^(input$alt_gamma)
      df$gX[i+1] <- input$alt_sR - input$alt_sX
      df$gx[i+1] <- input$alt_sR - input$alt_sX - df$gL[i+1]
      df$gxbase[i+1] <- base_sR - base_sX - base_gL
      df$gLbase[i+1] <- base_gL
      df$gAbase[i+1] <- base_gA
      df$lnA[i+1] <- lnA
      df$lnL[i+1] <- lnL
      df$lny[i+1] <- lny
      df$lnx[i+1] <- lnx
      df$lnxbase[i+1] <- lnxbase
      df$lnybase[i+1] <- lnybase
      df$gy[i+1] <- (1-input$alt_beta)*input$alt_gA -(input$alt_beta)*df$gL[i+1] + (input$alt_beta)*df$gX[i+1]
      df$gybase[i+1] <- (1-base_beta)*base_gA - (base_beta)*base_gL + base_beta*(base_sR - base_sX)
      lnL <- lnL+df$gL[i+1]
      lnA <- lnA+input$alt_gA
      lny <- lny+df$gy[i+1]
      lnx <- lnx+df$gx[i+1]
      lnybase <- lnybase + df$gybase[i+1]
      lnxbase <- lnxbase + df$gxbase[i+1]
    }
    
    return(df)
  })
  
 
  output$lnygraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = lny, color = "black"),size=1) + 
        geom_line(aes(y = lnybase, color = "blue"),linetype="dashed",size=1) + 
        xlab("Time") +
        ylab("Log GDP per capita") +
        theme_light() +
        ggtitle("GDP per capita over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Baseline"),
                             guide = "legend")
    }
  )
  
  output$lnxgraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = lnx, color = "black"),size=1) + 
        geom_line(aes(y = lnxbase, color = "blue"),linetype="dashed",size=1) + 
        xlab("Time") +
        ylab("Log resources per capita") +
        theme_light() +
        ggtitle("Resources per capita over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Baseline"),
                             guide = "legend")
    }
  )
  
    output$glgraph <- renderPlot(
      {
        ggplot(GraphData(), aes(t,value,colour=variable)) +
          geom_line(aes(y = gL, color = "black"),size=1) + 
          geom_line(aes(y = gLbase, color = "blue"),linetype="dashed",size=1) + 
          xlab("Time") +
          ylab("Population growth rate") +
          theme_light() +
          ggtitle("Population growth over time") + 
          scale_color_identity(name = "Models",
                               breaks = c("black", "green", "blue"),
                               labels = c("Actual", "New BGP", "Baseline"),
                               guide = "legend")
      }    
  ) # end gL graph
  

    output$gygraph <- renderPlot(
      {
        ggplot(GraphData(), aes(t,value,colour=variable)) +
          geom_line(aes(y = gy, color = "black"),size=1) + 
          geom_line(aes(y = gybase, color = "blue"),linetype="dashed",size=1) +
          xlab("Time") +
          ylab("GDP p.c. growth rate") +
          theme_light() +
          ggtitle("GDP p.c. growth over time") + 
          scale_color_identity(name = "Models",
                               breaks = c("black", "green", "blue"),
                               labels = c("Actual", "New BGP", "Baseline"),
                               guide = "legend")
      }    
    ) # end gy graph    
    
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)