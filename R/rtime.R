#' rtime
#'
#' @param secs if true includes seconds
#'
#' @return current time
#' @export rtime
#'
#' @examples 'rtime()'
rtime <- function(secs = T) {
  
  current_time <- Sys.time()
  
  if (secs == T) {
    
    stringy <- str_sub(current_time, 12, 19)
    
  } else if (secs == F) {
    
    stringy <- str_sub(current_time, 12, 16)
    
  }
  
  return(stringy)
  
}