#' @title  `roperators`'s miuns-equal
#' @description Literally the same as roperators's `%-=%`. Just did not want to call `library(roperators, include.only = '%-=%')` every time I wanted to use it, and since I do load `rtoolbox` every time it was simpler to have it here.
#' @import roperators
#' @export %-=%
#' @return Same logic as ropreators's `%-=%`
#' @examples
#'  n <- 0
#'  for (i in 1:10) {
#'   n %-=% i
#'  }


`%-=%` <- roperators::`%-=%`