#' @title  As a percentage
#' 
#' @description Takes a value and a total and returns the value as a percentage of that total.
#'
#' @param x Value. 
#' @param t Total.
#' @param d Digits to round to.
#'
#' @return x as a percentage of t
#' @export as_x100
#'
#' @examples as_x100(sample(1:10, 1), sample(100:1000, 1), 3)

as_x100 <- function (x, t, d = 2) {
  
  p <- as.numeric(round((x * 100) / t, digits = d))
  
  return(p)
  
}

