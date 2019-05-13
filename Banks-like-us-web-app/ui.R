
library(shiny)

fluidPage(
  titlePanel("Banks Like Us"),
  fluidRow(
    column(3,
           wellPanel(
             h4("Bank Information"),
             selectInput("bank_name", "Bank Name",
                         bank_names, multiple = FALSE),
             uiOutput('fdic_cert')
           )
    )

  )
)


