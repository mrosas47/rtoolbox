#' Silent gc()
#' 
#' @description
#' Runs `gc()` inside `rtoolbox::silent()` so as to clean with no message.
#' 
#'
#' @return nothing
#' @export sgc
#'
#' @examples sgc()
sgc <- function () {
  
  rtoolbox::silent({gc()})
  
}