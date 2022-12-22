library(shiny)
library(emailjsr)

ui <- fluidPage(
  fixedPanel(
    use_emailjsr_ui("showmodal", "피드백"),
    right = 10,
    bottom = 10
  ),
  shinybrowser::detect()
)

server <- function(input, output, session) {
  emailjsr::use_emailjsr_server("showmodal", service_id = "zarathu", template_id = "template_8lmtpd9", user_id = "tSun__RsyK2JiDqUr", access_token = "VhkE4CkuPhJEf2r4czY6a", language = "ko")
}

shinyApp(ui = ui, server = server)
