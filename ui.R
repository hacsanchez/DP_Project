################################### ##   ## ####### #######
##                               ## ##   ## ##      ##
##   Trigonometric Functions     ## ##   ## ##      ## 
##      Harold Cruz-Sanchez      ## ####### ##      #######
##        October 2015           ## ##   ## ##           ##
##                               ## ##   ## ##           ##
################################### ##   ## ####### #######

library(shiny)

shinyUI(fluidPage(
  titlePanel("Trigonometric Functions"),
  fluidRow(
    br(), # just a blank line
    br() # just a blank line
    ),
    sidebarLayout(
        sidebarPanel(
            sliderInput('A', 'A = Function Factor',value = 1, min = -5, max = 5, step = 0.5),
            sliderInput('B', 'B = Angle Factor',value = 1, min = -5, max = 5, step = 0.5),
            sliderInput('C', 'C = Exponent',value = 1, min = 1, max = 5, step = 1),
          br(), # just a blank line
          "Any change in the values above mentioned, will create a new plot of different color",
          br(), # just a blank line
          "A = Function Factor  ",
        tags$b("Orange"),
          br(), # just a blank line
          "B = Angle Factor  ",
        tags$b("Blue"),
          br(), # just a blank line
          "C = Exponent  ",
        tags$b("Red"),
        br(),
        br(),
        "See the tabs to enjoy the plots" 
          
        ),

        
        mainPanel(
          tabsetPanel(type="tabs",
                      tabPanel("About", h3("Trigonometric Function"),
                               "In mathematics, the trigonometric functions are functions of an angle.",
                               "They relate the angles of a triangle to the lengths of its sides.",
                               "Trigonometric functions are important in the study of triangles and modeling periodic",
                               "phenomena, among many other applications.",
                               tags$br(),
                               tags$br(),
                               "Trigonometric functions have a wide range of uses including computing unknown lengths",
                               "and angles in triangles (often right triangles). In this use, trigonometric functions", 
                               "are used, for instance, in navigation, engineering, and physics. A common use in", 
                               "elementary physics is resolving a vector into Cartesian coordinates.", 
                               "The sine and cosine functions are also commonly used to model periodic",
                               "function phenomena such as sound and light waves, the position and velocity of", 
                               "harmonic oscillators, sunlight intensity and day length, and average temperature",
                               "variations through the year.",
                               tags$br(),
                               tags$br(),
                               "The most familiar trigonometric functions are:",
                               tags$b("Sine"), 
                               ",",
                               tags$b("Cosine"), 
                               "and",
                               tags$b("Tangent"),
                               ".",
                               tags$br(),
                               tags$br(), 
                               "For more information go to",
                               helpText( a("Trigonometric Functions Wiki", target="_blank", href="https://en.wikipedia.org/wiki/Trigonometric_functions"))
                               
                               ),
                      tabPanel("Sine", h3("Sine"),
                               "The sine of an angle is the ratio of the length of the opposite side to the length",
                               "of the hypotenuse. Given a unit circle, it is the side of the triangle on which the angle",
                               " opens. In our case",
                               tags$br(),
                               withMathJax(
                                 helpText('$$\\sin(\\theta)=\\frac{opposite}{hypotenuse}$$')
                               ),
                               tags$br(),
                               "The following plot shows the basic function, ",
                               "but you can plot the same function with extra information",
                               tags$br(),
                               withMathJax(
                                 helpText('$$A*\\sin(B*\\theta)^C$$')
                               ),
                               
                               plotOutput('Sine_Plot')),
                      tabPanel("Cosine", h3("Cosine"),
                               "The cosine of an angle is the ratio of the length of the adjacent side to the length",
                               "of the hypotenuse.",
                               "In our case",
                               tags$br(),
                               withMathJax(
                                 helpText('$$\\cos(\\theta)=\\frac{adjacent}{hypotenuse}$$')
                               ),
                               tags$br(),
                               "The following plot shows the basic function, ",
                               "but you can plot the same function with extra information",
                               tags$br(),
                               withMathJax(
                                 helpText('$$A*\\cos(B*\\theta)^C$$')
                               ),
                               
                               plotOutput('Cosine_Plot')),
                      tabPanel("Tangent", h3("Tangent"),
                               "The tangent of an angle is the ratio of the length of the opposite side",
                               "to the length of the adjacent side: so called because it can be represented",
                               "as a line segment tangent to the circle, that is the line that touches the circle,",
                               "from Latin linea tangens or touching line. In our case",
                               tags$br(),
                               withMathJax(
                                 helpText('$$\\tan(\\theta)=\\frac{adjacent}{opposite}$$')
                               ),
                               tags$br(),
                               "The following plot shows the basic function, ",
                               "but you can plot the same function with extra information",
                               tags$br(),
                               withMathJax(
                                 helpText('$$A*\\tan(B*\\theta)^C$$')
                               ),
                               
                               plotOutput('Tangent_Plot'))
            
          )
            
        )
        
    )
))




