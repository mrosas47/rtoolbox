#' @title  Percentage
#'
#' @param x value
#' @param t total
#' @param d digits to round
#'
#' @return x as a percentage of t
#' @export as_x100
#'
#' @examples as_x100(25, 200)
#' 
as_x100 <- function (x, t, d = 2) {
  
  p <- as.numeric(round((x * 100) / t, digits = d))
  
  return(p)
  
}

