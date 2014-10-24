library(shiny)


shinyUI(pageWithSidebar(
  
  headerPanel("Course Project:Calculating Hypotenuse of Right Angle Triangle"),  
  sidebarPanel(   
    p( align="justify","This is a simple application with no intention for practical application. What it does is given the height and width of a right angle triangle, it calculates the Hypotenuse and draw the equivalent triangle on the right panel.
      The application starts with a default height and width of 10 units. You may change the numbers either using the increase/decrease buttons on the input boxes or just type a replacement on the boxes. As soon as you changed either the width or height , the new Hypotenuse will be calculated using the formula $$z= sqrt(x^2 + y^2)$$ and the resulting number as well as triangle will be displayed on the right panel. "),
    h4("Give Width and Height:"), 
    numericInput('x','Width :',10, min=0, max=500,step=1),
    numericInput('y','Height :',10, min=0, max=500,step=1)
    ),   
  mainPanel(
    h2(withMathJax("$$ z= sqrt(x^2 + y^2)$$")),
    plotOutput('RAT')  
  
  )))