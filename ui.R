library(shiny)

shinyUI(
  navbarPage("Shiny Application",
             tabPanel("Analysis",
                      fluidPage(
                        titlePanel("The relationship between Variables and Length of Sepals"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c(
                                          "Width of Sepal" = "Sepal.Width",
                                          "Length of Petals" = "Petal.Length",
                                          "Width of Petals" = "Petal.Width",
                                          "Species"="Species"
                                        )),
                            
                            checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("BoxPlot", plotOutput("irisBoxPlot")),
                                        tabPanel("Regression model", 
                                                 plotOutput("irisPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("Iris Flower Dataset",
                      h2("All the data is available in Iris in R datasets package"),
                      hr(),
                      h3("About Iris dataset"),
                      helpText("The Iris flower data set or Fisher's Iris data set is a multivariate data set introduced by the British statistician and biologist Ronald Fisher in his 1936 paper",
                               "The data set consists of 50 samples from each of three species of Iris (Iris setosa, Iris virginica and Iris versicolor). Four features were measured from each sample: the length and the width of the sepals and petals, in centimetres. Based on the combination of these four features, Fisher developed a linear discriminant model to distinguish the species from each other"),
                      h3("Important"),
                      p("A data frame with 150 observations on 5 variables. To learn more about Regression,click the link below :"),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("More Data Detail",
                      h2("Iris flower Dataset.Studying relation between length of Sepals and other variables."),
                      hr(),
                      h3("Description"),
                      helpText("The Iris dataset was used in Fisher's classic 1936 paper,",
                               "  The Use of Multiple Measurements in Taxonomic Problems, and can also be found on the UCI Machine Learning Repository.",
                               " It includes three iris species with 50 samples each as well as some properties about each flower. One flower species is linearly separable from the other two, but the other two are not linearly separable from each other."),
                      h3("Format"),
                      p("A data frame with 150 observations on 5 variables."),
                      
                      p("  [, .]   id  "),
                      p("  [, 1]	 Sepal.Length	 "),
                      p("  [, 2]   Sepal.Width	 "),
                      p("  [, 3]	 Petal.Length	 "),
                      p("  [, 4]	 Petal.Width	 "),
                      p("  [, 5]	 Species "),
                      
                      
                       h3("Source"),
                      
                      p(" UCI Machine Learning Repository")
             ),
             tabPanel("My Github repository",
                      a("https://github.com/ludovicbenistant?tab=repositories"),
                      hr(),
                      h2("The name of the repositorie is DataProducts"),
                      h2("I hope you liked the Shiny App.Thank you")
             )
  )
)