library(shiny)
library(rsconnect)
library(ggplot2)

#############################################################
# Set the baseline parameters
#############################################################
base_nu <- .1
base_cbar <- .95
base_gA <- .005
base_beta <- .3
base_X <- 1
base_A <- 1
base_L <- 1
base_timeT <- 300

#############################################################
# Define UI ----
#############################################################
ui <- fluidPage(
  withMathJax(),
  titlePanel("Malthusian Model"),
  
  sidebarLayout(
    sidebarPanel(
      
      h4("Set parameters"),
      actionButton("reset", "Reset to baseline"),
      sliderInput("alt_nu", h6("Population growth parameter \\(\\nu\\)"),
                  min = -1, max = 1, value = base_nu, step=.01),
      sliderInput("alt_cbar", h6("Subsistence consumption \\(\\overline{c}\\)"),
                  min = 0, max = 3, value = base_cbar,step=.05),
      sliderInput("alt_gA", h6("Productivity growth rate \\(g_A\\)"),
                  min = -.1, max = .1, value = base_gA,step=.001),
      sliderInput("alt_beta", h6("Land elasticity \\(\\beta\\)"),
                  min = 0, max = .5, value = base_beta, step=.01),
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
                             \\(Y = X^{\\beta}(A^{\\beta/(1-\\beta)}L)^{1-\\beta}\\)."),
                           br(),
                           p("The blue line is the baseline path, and the black line is the alternative path given the
                             parameters you choose."),
                           br(),
                           plotOutput("lnygraph",width = "100%") ),
                  tabPanel("Log population size", 
                           br(),
                           p("Population growth depends on GDP per capita, so the size of the population will
                              depend on productivity and land. 
                             "),
                           br(),
                           plotOutput("lnLgraph",width = "100%") ),
                  tabPanel("Population growth rate", 
                           br(),
                           p("Population growth is allowed to be affected by GDP per capita, with \\(g_L=\\nu(y - \\overline{c})\\)
                             This is the key Malthusian relationship, and ensures the economy reaches a steady state."),
                           br(),
                           plotOutput("glgraph",width = "100%") ),
                  tabPanel("GDP p.c. growth", 
                           br(),
                           p("GDP per capita growth depends on a race between productivity growth versus population growth.
                             The Malthusian population response makes this race hard to win."),
                           br(),
                           plotOutput("gygraph",width = "100%") ),
                  tabPanel("AX/L dynamics", 
                           br(),
                           p("This graph is different. It shows the relationship of the growth rate of L and
                             the level of AX/L."),
                           br(),
                           p("The black dots indicate the actual AX/L ratio and growth rate of population over time. In the 
                             baseline, all these dots are at the steady state point. If you adjust parameters
                             you'll see these spread out and show you how AX/L and the growth rate of L evolved. 
                             See how they follow the green path based on the new parameters."),
                           br(),
                           plotOutput("axlgraph",width = "100%") )
                  
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
    updateSliderInput(session,'alt_nu',value = base_nu)
    updateSliderInput(session,'alt_cbar',value = base_cbar)
    updateSliderInput(session,'alt_gA',value = base_gA)
    updateSliderInput(session,'alt_beta',value = base_beta)
    updateSliderInput(session,'alt_A',value = base_A)
    updateSliderInput(session,'alt_L',value = base_L)
    updateSliderInput(session,'alt_X',value = base_X)
  })
  # Function to combine alternative and baseline inputs, generate dataframe
  # containing time series of outcomes
  GraphData <- reactive({
    t <- c(0:input$timeT) # vector of periods up to input time
    df <- data.frame(t) # create dataframe to hold outcomes
    base_y0 <- (base_A*base_X/base_L)^base_beta
    alt_y0 <- (input$alt_A*input$alt_X/input$alt_L)^input$alt_beta
    base_ystar <- base_gA/base_nu + base_cbar
    alt_ystar <- input$alt_gA/input$alt_nu + input$alt_cbar
    
    cat(file=stderr(), "Start ", base_A, "base A", "\n")
    cat(file=stderr(), "Start", base_X, "base X", "\n")
    cat(file=stderr(), "Start", base_L, "base L", "\n")
    cat(file=stderr(), "Start ", input$alt_A, "alt A", "\n")
    cat(file=stderr(), "Start", input$alt_X, "alt X", "\n")
    cat(file=stderr(), "Start", input$alt_L, "alt L", "\n")
    
    
    df$base_y <- base_y0*exp(-1*base_nu*base_beta*df$t) + (1-exp(-1*base_nu*base_beta*df$t))*base_ystar
    df$alt_y <- alt_y0*exp(-1*input$alt_nu*input$alt_beta*df$t) + (1-exp(-1*input$alt_nu*input$alt_beta*df$t))*alt_ystar
    
    df$base_lny <- log(df$base_y)
    df$alt_lny <- log(df$alt_y)
    
    df$base_gL <- base_nu*(df$base_y - base_cbar)
    df$alt_gL <- input$alt_nu*(df$alt_y - input$alt_cbar)
    
    df$base_gy <- base_beta*(base_gA - df$base_gL)
    df$alt_gy <- input$alt_beta*(input$alt_gA - df$alt_gL)
    
    df$base_axl <- df$base_y^(1/base_beta)
    df$alt_axl <- df$alt_y^(1/input$alt_beta)
    df$base_A <- base_A*(1+base_gA)^df$t
    df$alt_A <- input$alt_A*(1+input$alt_gA)^df$t
    df$base_L <- (1/df$base_axl)*df$base_A
    df$alt_L <- (1/df$alt_axl)*df$alt_A
    df$base_lnL <- log(df$base_L)
    df$alt_lnL <- log(df$alt_L)
    
    df$tick <- df$alt_axl
    
    return(df)
  })
  
 
  output$lnygraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = alt_lny, color = "black"),size=2) + 
        geom_line(aes(y = base_lny, color = "blue"),linetype="dashed",size=2) + 
        xlab("Time") +
        ylab("Log GDP per capita") +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ggtitle("GDP per capita over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Baseline"),
                             guide = "legend")
    }
  )
  
  output$lnLgraph <- renderPlot(
    {
      ggplot(GraphData(), aes(t,value,colour=variable)) +
        geom_line(aes(y = alt_lnL, color = "black"),size=2) + 
        geom_line(aes(y = base_lnL, color = "blue"),linetype="dashed",size=2) + 
        xlab("Time") +
        ylab("Log population") +
        theme_light() +
        theme(text = element_text(size = 16)) +
        ggtitle("Log population over time") + 
        scale_color_identity(name = "Models",
                             breaks = c("black", "green", "blue"),
                             labels = c("Actual", "New BGP", "Baseline"),
                             guide = "legend")
    }
  )
  
    output$glgraph <- renderPlot(
      {
        ggplot(GraphData(), aes(t,value,colour=variable)) +
          geom_line(aes(y = alt_gL, color = "black"),size=2) + 
          geom_line(aes(y = base_gL, color = "blue"),linetype="dashed",size=2) + 
          xlab("Time") +
          ylab("Population growth rate") +
          theme_light() +
          theme(text = element_text(size = 16)) +
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
          geom_line(aes(y = alt_gy, color = "black"),size=2) + 
          geom_line(aes(y = base_gy, color = "blue"),linetype="dashed",size=2) +
          xlab("Time") +
          ylab("GDP p.c. growth rate") +
          theme_light() +
          theme(text = element_text(size = 16)) +
          ggtitle("GDP p.c. growth over time") + 
          scale_color_identity(name = "Models",
                               breaks = c("black", "green", "blue"),
                               labels = c("Actual", "New BGP", "Baseline"),
                               guide = "legend")
      }    
    ) # end gy graph    
    
    # dynamics graph
    output$axlgraph <- renderPlot(
      {
        tick <- seq(0,3,.1) # arbitrary axl values
        df <- data.frame(tick) # create dataframe
        df$alt_gL <- input$alt_nu*(df$tick^input$alt_beta - input$alt_cbar)
        df$base_gL <- base_nu*(df$tick^base_beta - base_cbar)
        base_axl_star <- (base_gA/base_nu + base_cbar)^(1/base_beta)
        alt_axl_star <- (input$alt_gA/input$alt_nu + input$alt_cbar)^(1/input$alt_beta)

        ggplot(df, aes(x=tick)) +
          geom_line(aes(y = alt_gL, color = "green"),size=2) + 
          geom_line(aes(y = base_gL, color="blue"), linetype="dashed",size=2) +
          geom_point(data=GraphData(),y=GraphData()$alt_gL, color="black") +
          geom_hline(yintercept=base_gA, linetype="dotted", color = "blue",size=2) +
          geom_hline(yintercept=input$alt_gA, linetype="dotted", color = "green",size=2) +
          geom_vline(xintercept=base_axl_star, linetype="dotted", color = "red") +
          geom_vline(xintercept=alt_axl_star, linetype="dotted", color = "red") +
          xlab("AX/L ratio") +
          ylab("Growth rates") +
          theme_light() +
          theme(text = element_text(size = 16)) +
          ylim(-.06,.10) +
          ggtitle("Growth rate of L vs. AX/L") + 
          scale_color_identity(name = "Models",
                               breaks = c("green", "blue"),
                               labels = c("Alternative", "Baseline"),
                               guide = "legend")
      }
    ) # end dynamics graph
    
} # end server

# Run the app ----
shinyApp(ui = ui, server = server)