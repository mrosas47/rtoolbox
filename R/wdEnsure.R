#' @title Ensure working directory
#' 
#' @description Make sure that the working directory is set correctly. It aims to eliminate the need to explicitly write an `if` statement and can replace `setwd()`.
#' 
#' @param wd Working directory
#'
#' @return Message indicating the result of setting the working directory.
#' @export wdEnsure
#'
#' @examples
#'   wd <- 'C:/some_directory'
#'   wdEnsure(wd)

wdEnsure <- function(wd) {
  
  os <- Sys.info()['sysname']
  if (os == 'Windows' & stringr::str_sub(wd, 1, 6) == '/nexus') wd <- stringr::str_replace(wd, '/nexus', 'N:')
  if (os == 'Linux' & stringr::str_sub(wd, 1, 1) == 'N') wd <- stringr::str_replace(wd, 'N:/', '/nexus')
  
  tryCatch({
    
    if (getwd() != wd) {
      
      setwd(wd)
      return(cli::cli_alert_success(str_glue('Working directory set to {wd}')))
      
    } else {
      
      return(cli::cli_alert_info(str_glue('Working directory already set to {wd}')))
      
    }
    
  }, error = function(e) {
    
    return(cli::cli_alert_danger('There was an error while setting the working directory. Make sure it is spelled correctly.'))
    
  }) 
  
}