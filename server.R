################################### ##   ## ####### #######
##                               ## ##   ## ##      ##
##   Trigonometric Functions     ## ##   ## ##      ## 
##      Harold Cruz-Sanchez      ## ####### ##      #######
##        October 2015           ## ##   ## ##           ##
##                               ## ##   ## ##           ##
################################### ##   ## ####### #######

library(shiny)

shinyServer(
  function(input, output) 
  {
    output$Sine_Plot <- renderPlot({
      theta <- seq(from=0, to=2*pi, by=0.01);
      A <- input$A;
      B <- input$B;
      C <- input$C;
                 
      plot(0,0, xlim=c(0,2*pi), ylim=c(-A,A), type="n", xlab=expression(paste(theta)), ylab="Value of Function", lwd=2, lty=2, main="");
      lines(theta, sin(theta));
      if (A!=0) lines(theta, A*sin(theta), col="orange");
      if (B!=0) lines(theta, A*sin(B*theta), col="blue");
      if (C!=0) lines(theta, (A*sin(B*theta)^C), col="red");
    })

    output$Cosine_Plot <- renderPlot({
      theta <- seq(from=0, to=2*pi, by=0.01);
      A <- input$A;
      B <- input$B;
      C <- input$C;
      
      
      plot(0,0, xlim=c(0,2*pi), ylim=c(-A,A), type="n", xlab=expression(paste(theta)), ylab="Value of Function", lwd=2, lty=2, main="");
      lines(theta, cos(theta));
      if (A!=0) lines(theta, A*cos(theta), col="orange");
      if (B!=0) lines(theta, A*cos(B*theta), col="blue");
      if (C!=0) lines(theta, (A*cos(B*theta)^C), col="red");
    })

    output$Tangent_Plot <- renderPlot({
      theta <- seq(from=0, to=2*pi, by=0.01);
      A <- input$A;
      B <- input$B;
      C <- input$C;
      
      
      plot(0,0, xlim=c(0,2*pi), ylim=c(-A,A), type="n", xlab=expression(paste(theta)), ylab="Value of Function", lwd=2, lty=2, main="");
      lines(theta, tan(theta));
      if (A!=0) lines(theta, A*tan(theta), col="orange");
      if (B!=0) lines(theta, A*tan(B*theta), col="blue");
      if (C!=0) lines(theta, (A*tan(B*theta)^C), col="red");
    })
  }
)