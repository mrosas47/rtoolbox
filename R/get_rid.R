#' @title Get rid of variable
#' 
#' @description Get rid of variables in less steps.
#'
#' @param df data.frame object.
#' @param var.name Name (or names with c()) of variables to be dropped
#' 
#' @import dplyr
#'
#' @return df without the specified variables.
#' @export get_rid
#'
#' @examples # df <- df |> get_rid('variableName')

get_rid <- function (df, var.name) {
  
  stringy <- as.character(var.name)
  clone <- dplyr::select(
    
    df,
    -all_of(stringy)
    
  )
  
  return(clone)
  
}