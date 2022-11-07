#' @title  Percentage
#'
#' @param p percentage value
#' @param t total
#' @param d digits to round
#'
#' @return x as a percentage of t
#' @export x100of
#'
#' @examples x100of(25, 200)
#' 
x100of <- function (p, t, d = 2) {
  
  x <- as.numeric(round((p * t) / 100, digits = d))
  
  return(x)
  
}
