library(shiny)
library(rsconnect)
library(ggplot2)
library(shinylive)

#############################################################
# Set the baseline parameters
#############################################################
base_sI <- .2
base_gL <- .01
base_gA <- .02
base_delta <- .05
base_alpha <- .3
base_A <- 1
base_L <- 1
base_kalstar <- (base_sI/(base_gL+base_gA+base_delta))^(1/(1-base_alpha))
base_K <- base_kalstar*base_A
base_kystar <- base_sI/(base_gL+base_gA+base_delta)
base_timeT <- 50

#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Basic Solow Model"),
  
  sidebarLayout(
    sidebarPanel(
      
      h4("Set parameters"),
      actionButton("reset", "Reset to baseline"),
      sliderInput("alt_sI", h6('New capital share of GDP \\(s_I\\)'),
                  min = 0, max = 1, value = base_sI),
      sliderInput("alt_gL", h6("Population growth rate \\(gL\\)"),
                  min = -.04, max = .04, value = base_gL),
      sliderInput("alt_gA", h6("Productivity gorwth rate \\(gA\\)"),
                  min = -.06, max = .06, value = base_gA),
      sliderInput("alt_delta", h6("Depreciation rate \\(\\delta\\)"),
                  min = 0, max = 1, value = base_delta),
      sliderInput("alt_alpha", h6("Capital elasticity \\(\\alpha\\)"),
                  min = 0, max = 1, value = base_alpha),
      sliderInput("alt_K", h6("Initial capital stock \\(K_0\\)"),
                  min = 0, max = 10, value = base_K,step = 0.1),
      sliderInput("alt_A", h6("Initial Productivity \\(A_0\\)"),
                  min = 0, max = 10, value = base_A, step = 0.1),
      sliderInput("alt_L", h6("Initial Labor \\(L_0\\)"),
                  min = 0, max = 10, value = base_L, step = 0.1),
      sliderInput("timeT", h6("Number of periods"),
                  min = 0, max = 300, value = base_timeT, step = 1)
      ), # end sidebar panel
    
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("K/AL ratio",
                           br(),
                           p("The baseline is that the economy is on a BGP, so the actual K/AL ratio is constant. 
                             As you adjust the parameters to the left, there may be a new BGP, or actual K/AL may
                             not be on the BGP any more. Black graphs the actual path of K/AL, blue the baseline BGP,
                             and green is the new BGP based on your choice of parameters."),
                           br(),
                           p("Be sure you understand why some adjustments to parameters create a new BGP, and why
                             some adjustments only push actual K/AL off of the BGP."),
                           plotOutput("kalgraph",width = "100%") ),
                  tabPanel("Log GDP p.c.", 
                           br(),
                           p("This has the same idea the K/AL ratio. Black is the actual path of GDP per capita. 
                             Green is the BGP from the parameters you set, and blue is the original BGP."),
                           br(),
                           plotOutput("lnygraph",width = "100%") ),
                  tabPanel("Growth rate", 
                           br(),
                           p("The colors work the same with the growth rate of GDP per capita. Make sure you 
                             understand how this growth rate is related to the path of log GDP per capita."),
                           br(),
                           plotOutput("gygraph",width = "100%") ),
                  tabPanel("K/AL dynamics", 
                           br(),
                           p("This graph is different. It shows the relationship of the growth rate of K and
                             the level of K/AL. The negative slope established the stability of the Solow model.
                             Changes in some parameters shift the theoretical curves here, implying different
                             steady state K/AL ratios (denoted by red dotted) where the growth rate of capital is equal to productivity and population growth."),
                           br(),
                           p("The black dots indicate the actual K/AL ratio and growth rate of capital over time. In the 
                             baseline, all these dots are at the steady state point. If you adjust parameters
                             you'll see these spread out and show you how K/AL and the growth rate of K evolved. 
                             See how they follow the green path based on the new BGP."),
                           br(),
                           plotOutput("gkalgraph",width = "100%") )
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
    updateSliderInput(session,'alt_sI',value = base_sI)
    updateSliderInput(session,'alt_gL',value = base_gL)
    updateSliderInput(session,'alt_gA',value = base_gA)
    updateSliderInput(session,'alt_delta',value = base_delta)
    updateSliderInput(session,'alt_alpha',value = base_alpha)
    updateSliderInput(session,'alt_K',value = base_K)
    updateSliderInput(session,'alt_L',value = base_L)
    updateSliderInput(session,'alt_A',value = base_A)
    updateSliderInput(session,'timeT',value = base_timeT)
  })
  
  # Simple function to calculate the new  steady state K/Y ratio for display
  output$kystar <- renderText(
    { 
    paste("K/AL*:", 
          (input$alt_sI/(input$alt_delta+input$alt_gA+input$alt_gL))^(1/(1-base_alpha))
    )
    }
  )
  
  # Function to combine alternative and baseline inputs, generate dataframe
  # containing time series of outcomes
  # This is all done in K/Y terms as that is how explicit solution is done
  GraphData <- reactive({
    t <- c(0:input$timeT) # vector of periods up to input time
    df <- data.frame(t) # create dataframe to hold outcomes
    alt_kystar <- input$alt_sI/(input$alt_delta+input$alt_gA+input$alt_gL) # alt ss KY
    alt_ky <- (input$alt_K/(input$alt_L*input$alt_A))^(1-input$alt_alpha) ## actual starting KY
    
    # Formula to fill in per-period actual KY ratio
    df$ky <- alt_kystar*(1-exp(-(1-input$alt_alpha)*(input$alt_delta+input$alt_gA+input$alt_gL)*df$t)) + alt_ky*exp(-(1-input$alt_alpha)*(input$alt_delta+input$alt_gA+input$alt_gL)*df$t)
    df$kal <- df$ky^(1/(1-input$alt_alpha))
    
    df$kyalt <- alt_kystar # fill df with alt ss KY
    df$kybase <- base_kystar # fill df with base ss KY
    df$kalalt <- df$kyalt^(1/(1-input$alt_alpha)) # fill df with alt ss KAL
    df$kalbase <- base_kalstar # fill df with base ss KAL

    # Fill df with series on log GDP per capita
    df$lny <- (input$alt_alpha/(1-input$alt_alpha))*df$ky + log(input$alt_A) + input$alt_gA*df$t
    df$lnyalt <- (input$alt_alpha/(1-input$alt_alpha))*df$kyalt + log(input$alt_A) + input$alt_gA*df$t
    df$lnybase <- (base_alpha/(1-base_alpha))*df$kybase + log(base_A) + base_gA*df$t
    df$lnymax <- max(df$lny)
    
    # Fill df with series on growth rate of GDP per capita
    df$gky <- (1-input$alt_alpha)*(input$alt_sI/df$ky-input$alt_gL -input$alt_gA- input$alt_delta)
    df$gk  <- input$alt_sI/df$ky- input$alt_delta
    df$gy <- (input$alt_alpha/(1-input$alt_alpha))*df$gky + input$alt_gA
    df$gyalt <- input$alt_gA
    df$gybase <- base_gA
      
    df$tick <- df$kal # for graphing purposes later
    return(df)
  })
  
  output$kalgraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = kal, color = "black"),size=2) + 
        geom_line(aes(y = kalbase, color="blue"), linetype="dashed",size=2) +
        geom_line(aes(y = kalalt, color="green"), linetype="dashed",size=2) +
        xlab("Time") +
        ylab("K/AL ratio") +
        ylim(0, 10) +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ggtitle("K/AL ratio over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end ky graph
  
  output$lnygraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = lny, color = "black"),size=2) + 
        geom_line(aes(y = lnybase, color="blue"), linetype="dashed",size=2) +
        geom_line(aes(y = lnyalt, color="green"), linetype="dashed",size=2) +
        xlab("Time") +
        ylab("Log GDP per capita") +
        #ylim(0, 3) + # Don't use limits here, let graph adjust to size
        theme_light() +
        theme(text = element_text(size = 16)) +
        ggtitle("GDP per capita over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end lny graph
  
  
  output$gygraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = gy, color = "black"),size=2) + 
        geom_line(aes(y = gybase, color="blue"), linetype="dashed",size=2) +
        geom_line(aes(y = gyalt, color="green"), linetype="dashed",size=2) +
        xlab("Time") +
        ylab("Growth rate of GDP p.c.") +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ylim(-.05, .07) +
        ggtitle("Growth rate of GDP p.c. over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end gy graph

  output$gkalgraph <- renderPlot(
    {
      tick <- seq(0,6,.1) # arbitrary kal values
      df <- data.frame(tick) # create dataframe
      df$gk <- input$alt_sI/(df$tick^(1-input$alt_alpha))- input$alt_delta
      df$gkbase <- base_sI/(df$tick^(1-input$alt_alpha))- base_delta
      alt_kalstar = (input$alt_sI/(input$alt_gL + input$alt_gA + input$alt_delta))^(1/(1-input$alt_alpha))
      
      ggplot(df, aes(x=tick)) +
        geom_line(aes(y = gk, color = "green"),size=2) + 
        geom_line(aes(y = gkbase, color="blue"), linetype="dashed",size=2) +
        geom_point(data=GraphData(),y=GraphData()$gk, color="black") +
        geom_hline(yintercept=base_gA+base_gL, linetype="dotted", color = "blue",size=2) +
        geom_hline(yintercept=input$alt_gA+input$alt_gL, linetype="dotted", color = "green",size=2) +
        geom_vline(xintercept=base_kalstar, linetype="dotted", color = "red") +
        geom_vline(xintercept=alt_kalstar, linetype="dotted", color = "red") +
        xlab("K/AL ratio") +
        ylab("Growth rates") +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ylim(-.01,.12) +
        ggtitle("Growth rate of K vs. K/AL") + 
        scale_color_identity(name = "Models",
                             breaks = c("green", "blue"),
                             labels = c("New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end gky graph
  
  
} # end server

# Run the app ----
setwd("~/dropbox/project/studyguide/code/")
shinylive::export(appdir = "./SolowBasic", destdir = "docs")
shinyApp(ui = ui, server = server)