#' @title  Percent of
#' 
#' @description Some percentage of a total.
#'
#' @param p Desired percentage.
#' @param t Total.
#' @param d Digits to round to.
#'
#' @return x as a percentage of t
#' @export x100of
#'
#' @examples # x100of(25, 200)
#' 
x100of <- function (p, t, d = 2) {
  
  x <- as.numeric(round((p * t) / 100, digits = d))
  
  return(x)
  
}
