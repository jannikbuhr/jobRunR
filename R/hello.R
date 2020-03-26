
#' Run selected code as job
#'
#' Use this function as an RStudio addin!
#'
runJob <- function() {
  text <- rstudioapi::primary_selection(rstudioapi::getActiveDocumentContext())$text
  file <- tempfile()
  writeLines(text, file)
  rstudioapi::jobRunScript(path = file,name = "selection",
                           workingDir = here::here(),
                           importEnv = TRUE,
                           exportEnv = "R_GlobalEnv")
}

#' Run selected code as job
#'
#' Use this function as an RStudio addin!
#'
runJobQuietly <- function() {
  text <- rstudioapi::primary_selection(rstudioapi::getActiveDocumentContext())$text
  file <- tempfile()
  writeLines(text, file)
  rstudioapi::jobRunScript(path = file,name = "selection",
                           workingDir = here::here(),
                           importEnv = TRUE,
                           exportEnv = "")
}
