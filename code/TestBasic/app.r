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
base_kystar <- base_sI/(base_gL+base_gA+base_delta)
base_K <- base_kystar^(1/(1-base_alpha))
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
                  min = -.1, max = .1, value = base_gL),
      sliderInput("alt_gA", h6("Productivity gorwth rate \\(gA\\)"),
                  min = -.1, max = .1, value = base_gA),
      sliderInput("alt_delta", h6("Depreciation rate \\(\\delta\\)"),
                  min = 0, max = 1, value = base_delta),
      sliderInput("alt_alpha", h6("Capital elasticity \\(\\alpha\\)"),
                  min = 0, max = 1, value = base_alpha),
      sliderInput("alt_K", h6("Initial capital stock \\(K_0\\)"),
                  min = 0, max = 10, value = base_K,step = 0.1),
      sliderInput("alt_A", h6("Initial Productivity \\(A_0\\)"),
                  min = 0, max = 10, value = base_A, step = 0.1),
      sliderInput("timeT", h6("Number of periods"),
                  min = 0, max = 300, value = base_timeT, step = 1)
      ), # end sidebar panel
    
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("K/Y ratio",
                           br(),
                           p("The baseline is that the economy is on a BGP, so the actual K/Y is constant. 
                             As you adjust the parameters to the left, there may be a new BGP, or actual K/Y may
                             not be on the BGP any more. Black graphs the actual path of K/Y, blue the baseline BGP,
                             and green is the new BGP based on your choice of parameters."),
                           br(),
                           p("Be sure you understand why some adjustments to parameters create a new BGP, and why
                             some adjustments only push actual K/Y off of the BGP."),
                           plotOutput("kygraph",width = "100%") ),
                  tabPanel("Log GDP p.c.", 
                           br(),
                           p("This has the same idea the K/Y ratio. Black is the actual path of GDP per capita. 
                             Green is the BGP from the parameters you set, and blue is the original BGP."),
                           br(),
                           plotOutput("lnygraph",width = "100%") ),
                  tabPanel("Growth rate", 
                           br(),
                           p("The colors work the same with the growth rate of GDP per capita. Make sure you 
                             understand how this growth rate is related to the path of log GDP per capita."),
                           br(),
                           plotOutput("gygraph",width = "100%") ),
                  tabPanel("K/Y dynamics", 
                           br(),
                           p("This graph is different. It shows the relationship of the growth rate in K/Y and
                             the level of K/Y. The negative slope established the stability of the Solow model.
                             Changes in some parameters shift the theoretical curves here, implying different
                             steady state K/Y ratios where the growth rate is zero."),
                           br(),
                           p("The black dots indicate the actual K/Y ratio and growth rate over time. In the 
                             baseline, all these dots are at the steady state point. If you adjust parameters
                             you'll see these spread out and show you how K/Y and the growth rate of K/Y evolved. 
                             See how they follow the green path based on the new BGP."),
                           br(),
                           plotOutput("gkygraph",width = "100%") )
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
    updateSliderInput(session,'alt_A',value = base_A)
    updateSliderInput(session,'alt_timeT',value = base_timeT)
  })
  
  # Simple function to calculate the new  steady state K/Y ratio for display
  output$kystar <- renderText(
    { 
    paste("K/Y*:", 
          input$alt_sI/(input$alt_delta+input$alt_gA+input$alt_gL)) 
    }
  )
  
  # Function to combine alternative and baseline inputs, generate dataframe
  # containing time series of outcomes
  GraphData <- reactive({
    t <- c(1:input$timeT) # vector of periods up to input time
    df <- data.frame(t) # create dataframe to hold outcomes
    alt_kystar <- input$alt_sI/(input$alt_delta+input$alt_gA+input$alt_gL) # alt ss KY
    alt_ky <- (input$alt_K/input$alt_A)^(1-input$alt_alpha) ## actual starting KY
    
    # Formula to fill in per-period actual KY ratio
    df$ky <- alt_kystar*(1-exp(-(1-input$alt_alpha)*(input$alt_delta+input$alt_gA+input$alt_gL)*df$t)) + alt_ky*exp(-(1-input$alt_alpha)*(input$alt_delta+input$alt_gA+input$alt_gL)*df$t)
    
    df$kyalt <- alt_kystar # fill df with alt ss KY
    df$kybase <- base_kystar # fill df with base ss KY
    
    # Fill df with series on log GDP per capita
    df$lny <- (input$alt_alpha/(1-input$alt_alpha))*df$ky + log(input$alt_A) + input$alt_gA*df$t
    df$lnyalt <- (input$alt_alpha/(1-input$alt_alpha))*df$kyalt + log(input$alt_A) + input$alt_gA*df$t
    df$lnybase <- (base_alpha/(1-base_alpha))*df$kybase + log(base_A) + base_gA*df$t
    
    # Fill df with series on growth rate of GDP per capita
    df$gky <- (1-input$alt_alpha)*(input$alt_sI/df$ky-input$alt_gL -input$alt_gA- input$alt_delta)
    df$gy <- (input$alt_alpha/(1-input$alt_alpha))*df$gky + input$alt_gA
    df$gyalt <- input$alt_gA
    df$gybase <- base_gA
      
    df$tick <- df$ky # for graphing purposes later
    return(df)
  })
  
  output$kygraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = ky, color = "black"),size=1) + 
        geom_line(aes(y = kybase, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = kyalt, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Capital/output ratio") +
        ylim(0, 5) +
        theme_light() +
        ggtitle("Capital/output ratio over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end ky graph
  
  output$lnygraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = lny, color = "black"),size=1) + 
        geom_line(aes(y = lnybase, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = lnyalt, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Log GDP per capita") +
        ylim(0, 3) +
        theme_light() +
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
        geom_line(aes(y = gy, color = "black"),size=1) + 
        geom_line(aes(y = gybase, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = gyalt, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Growth rate of GDP p.c.") +
        theme_light() +
        ylim(-.05, .07) +
        ggtitle("Growth rate of GDP p.c. over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end gy graph

  output$gkygraph <- renderPlot(
    {
      tick <- seq(0,6,.1) # arbitrary ky values
      df <- data.frame(tick) # create dataframe
      df$gky <- (1-input$alt_alpha)*(input$alt_sI/df$tick-input$alt_gL -input$alt_gA- input$alt_delta)
      df$gkybase <- (1-base_alpha)*(base_sI/df$tick-base_gL -base_gA- base_delta)
      
      ggplot(df, aes(x=tick)) +
        geom_line(aes(y = gky, color = "green"),size=1) + 
        geom_line(aes(y = gkybase, color="blue"), linetype="dashed",size=1) +
        geom_point(data=GraphData(),y=GraphData()$gky, color="black") +
        geom_hline(yintercept=0, linetype="dotted", color = "red") +
        xlab("K/Y ratio") +
        ylab("Growth rate of K/Y") +
        theme_light() +
        ylim(-.1,.15) +
        ggtitle("Growth rate of K/Y vs. K/Y") + 
        scale_color_identity(name = "Models",
                             breaks = c("green", "blue"),
                             labels = c("New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end gky graph
  
  
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)