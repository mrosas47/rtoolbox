#' rdate
#'
#' @return current date in normal person format
#' @export rdate
#'
#' @examples 'rdate()'
rdate <- function() {
  
  current_date <- Sys.Date()
  day <- str_sub(current_date, -2, -1)
  month <- str_sub(current_date, -5, -4)
  year <- str_sub(current_date, 1, 4)
  
  stringy <- paste(day, month, year, sep = '-')
  
  return(stringy)
  
}