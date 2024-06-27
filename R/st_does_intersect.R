#' @title Does intersect
#' 
#' @description Checks if two sf objects intersect. Simplified return of `sf::st_intersects()`.
#'
#' @param x A sf object
#' @param y A sf object
#'
#' @return A logical value
#' @export st_does_intersect
#'
#' @examples # not yet

st_does_intersect <- function(x, y) {
  
  intersect_result <- st_intersects(x, y)
  
  if (length(intersect_result[[1]]) > 0) return(T)
  else return(F)
  
}
