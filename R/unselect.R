#' @title Unselect
#'
#' @param obj expects df object
#' @param x vector of variables to unselect (string names)
#'
#' @return df without the variables
#' @export unselect
#'
#' @examples # not yet

unselect <- function(obj, x) {
  
  clone <- obj

  for (i in x) clone %<>% dplyr::select(-!!tidyselect::all_of(i))
  
  return(clone)
  
}
