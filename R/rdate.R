#' @title Prettier date
#' 
#' @description Sys.Date() but in a more familiar format and without unnecessary extras. Useful when reporting to the console or writing metadata.
#' 
#' @import stringr
#'
#' @return Current date in a simpler dd-mm-yy format.
#' @export rdate
#'
#' @examples 
#'   rdate()

rdate <- function() {
  
  current_date <- Sys.Date()
  day <- stringr::str_sub(current_date, -2, -1)
  month <- stringr::str_sub(current_date, -5, -4)
  year <- stringr::str_sub(current_date, 1, 4)
  
  stringy <- paste(day, month, year, sep = '-')
  
  return(stringy)
  
}