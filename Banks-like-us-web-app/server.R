#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$fdic_cert = renderUI({

    fdic_certs = names_ids %>%
      filter(name_1 == input$bank_name) %>%
      select(cert_1) %>%
      pull()

    selectInput('fdic_certification_number', 'FDIC Certification Number', fdic_certs)
  })

  output$table = DT::renderDataTable({

    bank_similarities %>%
      filter(cert_1 == as.numeric(input$bank_cert)) %>%
      arrange(distance) %>%
      slice(1:input$n_banks)

  })

})
