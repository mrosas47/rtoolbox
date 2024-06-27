#' @title Prettier time
#'
#' @description Sys.Time() but in a more familiar format and without unnecessary extras. Useful when reporting to the console; really helps with understanding execution flow.
#' 
#' @param secs Include seconds? T/F
#' 
#' @import stringr
#'
#' @return Current time in simpler HH:mm or HH:mm:ss format.
#' @export rtime
#'
#' @examples 
#'   rtime()

rtime <- function(secs = T) {
  
  current_time <- Sys.time()
  
  if (secs == T) {
    
    stringy <- stringr::str_sub(current_time, 12, 19)
    
  } else if (secs == F) {
    
    stringy <- stringr::str_sub(current_time, 12, 16)
    
  }
  
  return(stringy)
  
}