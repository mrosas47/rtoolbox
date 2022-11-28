#' @title Get rid of ...
#'
#' @param df data.frame
#' @param var.name name (or names with c()) to be dropped
#'
#' @return data.frame
#' @export get_rid
#'
#' @examples 'i really dont wanna write rn'

get_rid <- function (df, var.name) {
  
  stringy <- as.character(var.name)
  
  clone <- select(
    
    df,
    -all_of(stringy)
    
  )
  
  return(clone)
  
}