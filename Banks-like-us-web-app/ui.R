
library(shiny)

fluidPage(
  titlePanel("Banks Like Us"),
  fluidRow(
    column(3,
           wellPanel(
             h4("Bank Information"),
             textInput("bank_cert", "FDIC Certification Number"),
             sliderInput("n_banks", "Number of Similar Banks", 5, 100, 10)
           )
    ),
    column(9,
           DT::dataTableOutput("table")

    )

  )

)



