modal <- list(c("text", "name","Type your name", "John Doe"), c("text", "email", "Type your email", "email@example.com"))

text <- function(name, description, placeholder = "", required = FALSE){
  textInput(ns(name), i18n$t(description), placeholder = i18n$t(placeholder))
}

textArea <- function(name, description, placeholder = "", required = FALSE){
  textAreaInput(ns(name), i18n$t(description), placeholder = i18n$t(placeholder))
}

for(component in modal){
  switch(component[1],
         "text" = {
           text(component[2], component[3], component[4])
         },
         "textArea" = {
           textArea(component[2], component[3], component[4])
         })
}
