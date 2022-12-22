library(shiny)
library(shinydisconnect)
library(shinyjs)
library(emailjsr)
source("inst/customshinyDisconnect.R")

ui <- fluidPage(
  useShinyjs(),

  actionButton("disconnect", "Disconnect the app"),

  #emailjsr::use_emailjsr(
  #  serviceId = "zarathu", userId = "j3khsaTA4a3cNMahu", templateId = "template_8lmtpd9"
  #)
)

server <- function(input, output, session) {
  observeEvent(input$disconnect, {
    session$close()
  })
}

shinyApp(ui, server)

