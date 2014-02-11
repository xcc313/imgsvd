require('shiny')
require('rARPACK')
require('jpeg')
require('png')
require('uuid')

shinyUI(pageWithSidebar(
  
  headerPanel(title = 'ImgSVD - Image Compression via SVD', windowTitle = 'ImgSVD - Image Compression via SVD'),
  
  sidebarPanel(
    includeCSS('boot.css'), 
    includeHTML('header.html'), 
    
    helpText("Step 1. Upload Image"),
    fileInput('file1', 'Upload a JPEG File:'),
    
    tags$hr(),
    
    helpText("Step 2. Selecting k"),
    sliderInput("intk", "Slide to choose k:", min = 1, max = 100, value = 5)
    
  ),
  
  mainPanel(
    
    tabsetPanel(
      
      tabPanel("Let's do this!", 
               h3("Original Image"), 
               tags$hr(), 
               imageOutput("originImage"), 
               tags$hr(), 
               h3("Compressed Image"), 
               tags$hr(), 
               imageOutput("svdImage")
      ), 
      
      tabPanel("Cite this app", 
               includeHTML('cite.html')
      )
      
    ),
    
    includeHTML('footer.html')
    
  )
  
))