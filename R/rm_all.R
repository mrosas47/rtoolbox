#' @title Remove all
#'
#' @description Remove all objects from environment. Direct implementation of `rm(list = ls(envir = globalenv()))`. Also gives the option to keep specific objects. Skips non-existing objects in the `except` vector.
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
    cli_alert_success(str_glue('{rtime()} - All variables removed'))
    
  } else if (length(except) > 0) {
    
    except_ <- c()
    
    for (x in except) {
      
      if (exists(x)) except_ <- c(except_, x)
      if (!exists(x)) cli_alert_danger(str_glue('Object {x} does not exist; skipping'))
      
    }
    
    rm(list = ls(envir = globalenv())[ls(envir = globalenv()) %notin% except_], envir = globalenv())
    cli_alert_success(str_glue('{rtime()} - All variables removed except {paste(except_, collapse = ", ")}'))
    
  }
  
}
