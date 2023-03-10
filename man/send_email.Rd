% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emailjsr.R
\name{send_email}
\alias{send_email}
\title{send_email}
\usage{
send_email(
  service_id,
  user_id,
  template_id,
  template_params = list(),
  access_token = NULL
)
}
\arguments{
\item{service_id}{emailjs.com Service Id}

\item{user_id}{emailjs.com User Id or Public Key}

\item{template_id}{emailjs.com Template Id}

\item{template_params}{Params passed to emailjs.com. You should set template at emailjs.com in prior.}

\item{access_token}{emailjs.com Access Token or Private Key. Default is NULL in case of you don't use access token.}
}
\value{
response() Return A response() object of httr, including response of emailjs server
}
\description{
Send email using emailjs service.
}
\note{
You should allow EmailJS API for non-browser applications.
}
\examples{
library(emailjsr)

send_email("service_id", "user_id", "template_id", "access_token", list(name = "John Doe"))

}
