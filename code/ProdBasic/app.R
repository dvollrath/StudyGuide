library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################
base_lambda <- 1
base_phi <- 0
base_L_0 <- 1
base_sR <-.02
base_theta <- .1
base_gL <- .01
base_timeT <- 200
base_A_0 <- ((base_L_0^base_lambda)*(1-base_phi)*base_theta*(base_sR^base_lambda)/(base_lambda*base_gL))^(1/(1-base_phi))

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
      sliderInput("alt_L", h6('Initial population \\(L_0\\)'),
                  min = 0, max = 4, value = base_L_0, step=.01),
      sliderInput("alt_A", h6('Initial productivity \\(A_0\\)'),
                  min = 0, max = 4, value = base_A_0, step=.01),
      sliderInput("alt_sR", h6('Initial research share \\(s_R\\)'),
                  min = 0, max = .5, value = base_sR, step=.01),
      sliderInput("alt_lambda", h6("Research elasticity \\(\\lambda\\)"),
                  min = 0, max = 1, value = base_lambda),
      sliderInput("alt_phi", h6("Productivity effect \\(\\phi\\)"),
                  min = -2, max = 1, value = base_phi,step=.01),
      sliderInput("alt_theta", h6("Base parameter \\(\\theta\\)"),
                  min = 0, max = 1, value = base_theta,step=.01),
      sliderInput("alt_gL", h6("Population growth \\(g_L\\)"),
                  min = 0, max = .05, value = base_gL,step=.005),      
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
                           p("This figure describes how the ratio of \\(L^{\\lambda}/A^{1-\\phi}\\) determines
                             the growth rate of productivity, which is the upward sloping line. The horizontal 
                             lines are the scaled researcher growth rate, \\(g_L\\lambda/(1-\\phi)\\). The
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
    updateSliderInput(session,'alt_L',value = base_L_0)
    updateSliderInput(session,'alt_A',value = base_A_0)
    updateSliderInput(session,'alt_lambda',value = base_lambda)
    updateSliderInput(session,'alt_phi',value = base_phi)
    updateSliderInput(session,'alt_theta',value = base_theta)
    updateSliderInput(session,'timeT',value = base_timeT)
    updateSliderInput(session,'alt_gL',value = base_gL)
    updateSliderInput(session,'alt_sR',value = base_sR)
  })
  

  # Function to combine alternative and baseline inputs, generate dataframe
  # containing time series of outcomes
  GraphData <- reactive({
    t <- c(0:input$timeT) # vector of periods up to input time
    df <- data.frame(t) # create dataframe to hold outcomes
    
    AL_base_init <- base_A_0^(1-base_phi)/base_L_0^base_lambda # initial A/L ratio (with exponents)
    AL_alt_init <- input$alt_A^(1-input$alt_phi)/input$alt_L^input$alt_lambda # initial A/L ratio (with exponents)
    AL_base_ss <- (1-base_phi)*base_theta*(base_sR^base_lambda)/(base_lambda*base_gL) # s.s. A/L ratio
    AL_alt_ss <- (1-input$alt_phi)*input$alt_theta*(input$alt_sR^input$alt_lambda)/(input$alt_lambda*input$alt_gL) # s.s. A/L ratio
    gA_base_ss <- (base_lambda/(1-base_phi))*base_gL # steady state growth rate of A
    gA_alt_ss <- (input$alt_lambda/(1-input$alt_phi))*input$alt_gL # steady state growth rate of A
    
    alt_conv_term <- input$alt_lambda*input$alt_gL # convergence term for exact solution
    df$AL_alt <- AL_alt_ss*(1-exp(-1*alt_conv_term*df$t)) + AL_alt_init*exp(-1*alt_conv_term*df$t) # A/L at each t
    df$gA_alt_time <- input$alt_theta*(input$alt_sR^input$alt_lambda)/df$AL_alt # gA at each t
    df$lnA <- (input$alt_lambda/(1-input$alt_phi))*log(input$alt_L) + (1/(1-input$alt_phi))*log(df$AL_alt) + (input$alt_lambda/(1-input$alt_phi))*input$alt_gL*df$t
    df$lnA_alt_bgp <- (input$alt_lambda/(1-input$alt_phi))*log(input$alt_L) + (1/(1-input$alt_phi))*log(AL_alt_ss) + (input$alt_lambda/(1-input$alt_phi))*input$alt_gL*df$t
    df$lnA_base_bgp <- (base_lambda/(1-base_phi))*log(base_L_0) + (1/(1-base_phi))*log(AL_base_ss) + (base_lambda/(1-base_phi))*base_gL*df$t
    
    df$tick <- df$gA_alt_time/(input$alt_theta*input$alt_sR^input$alt_lambda)
    df$gA_base_ss <- gA_base_ss
    df$gA_alt_ss <- gA_alt_ss
    return(df)
  })
  
  output$gagraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = gA_alt_time, color = "black"),size=1) + 
        geom_line(aes(y = gA_base_ss, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = gA_alt_ss, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Growth rate of productivity") +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ylim(0, .04) +
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
        geom_line(aes(y = lnA_base_bgp, color="blue"), linetype="dashed",size=1) +
        geom_line(aes(y = lnA_alt_bgp, color="green"), linetype="dashed",size=1) +
        xlab("Time") +
        ylab("Log of productivity") +
        #ylim(0, .1) +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ggtitle("Produtcivity level over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Old BGP"),
                             guide = "legend")
    }
  ) # end ga graph
  
  output$dyngraph <- renderPlot(
    {
      tick <- seq(0,10,.01) # arbitrary ky values
      dm <- data.frame(tick) # create dataframe
      gAbasess <- base_gL*base_lambda/(1-base_phi)
      gAaltss <- input$alt_gL*input$alt_lambda/(1-input$alt_phi)
      dm$gAbase <- base_theta*base_sR^base_lambda*dm$tick
      dm$gAalt <- input$alt_theta*input$alt_sR^input$alt_lambda*dm$tick
      ssbase <- (base_gL*base_lambda/(1-base_phi))/(base_theta*base_sR^base_lambda)
      ssalt <- (input$alt_gL*input$alt_lambda/(1-input$alt_phi))/(input$alt_theta*input$alt_sR^input$alt_lambda)
      
      ggplot(dm, aes(x=tick)) +
        geom_line(aes(y = gAalt, color = "green"),size=1) + 
        geom_line(aes(y = gAbase, color="blue"), linetype="dashed",size=1) +
        geom_point(data=GraphData(),y=GraphData()$gA_alt_time, color="black") +
        geom_hline(yintercept=gAbasess, linetype="dashed", color = "blue") +
        geom_hline(yintercept=gAaltss, linetype="dashed", color = "green") +
        geom_vline(xintercept=ssbase, linetype="dotted", color = "red") +
        geom_vline(xintercept=ssalt, linetype="dotted", color = "red") +
        xlab("Relative L/A (L^l/A^1-p)") +
        ylab("Growth rates") +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ylim(0,.05) +
        ggtitle("Productivity growth dynamics") + 
        scale_color_identity(name = "Models",
                             breaks = c("green", "blue"),
                             labels = c("New gA function", "Old gA function"),
                             guide = "legend")
    }
  ) # end dyn graph  
  
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)