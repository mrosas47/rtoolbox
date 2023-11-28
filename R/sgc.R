#' Silent gc()
#' 
#' @description
#' Runs `gc()` inside `invisible()` so as to clean with no message.
#' 
#'
#' @return nothing
#' @export sgc
#'
#' @examples sgc()

sgc <- function () {
  
  suppressMessages({
    
    gc()
    
  })
  
}