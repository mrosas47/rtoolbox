#' @title Isn't null
#'
#' @param x An object
#'
#' @return A logical value
#' @export isnt.null
#'
#' @examples # not yet

isnt.null <- function(x) {
  
  if (is.null(x)) return(F)
  if (!is.null(x)) return(T)
  
}