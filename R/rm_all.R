#' @title Remove all
#'
#' @description Remove all objects from environment. Direct implementation of `rm(list = ls(envir = globalenv()))`. Also gives the option to keep specific objects.
#' 
#' @param except Vector of names of objects to keep.
#' 
#' @import cli
#'
#' @export rm_all
#'
#' @return Clears global environment.
#' 
#' @examples 
#'   rm_all()

`%notin%` <- Negate(`%in%`)

rm_all <- function(except = c()) {
  
  if (length(except) == 0) {
    
    rm(list = ls(envir = globalenv()), envir = globalenv())
    cli::cli_alert_success('Cleared environment with no excpetions.')
    
  } else {
    
    rm(list = ls(envir = globalenv())[ls(envir = globalenv()) %notin% except], envir = globalenv())
    cli::cli_alert_success('Cleared environment, except specified names.')
    
  }
  
}