#' @title Mid message
#'
#' @description
#' Messages mid-pipeline
#' 
#'
#' @param df the df, to be passed with pipe
#' @param msg a message
#' @param type based con cli
#'
#' @return the original df so as to continue with the pipeline
#' @export pipe_msg
#'
#' @examples # not yet
#' 

pipe_msg <- function(df, msg, type = NULL, time = T) {
  
  stringy <- msg
  if (time) stringy <- stringr::str_glue('{rtime()} -- {msg}')
  
  if (is.null(type)) cli::cli_text(stringy)
  else if (type == 'alert') cli::cli_alert(stringy)
  else if (type == 'success') cli::cli_alert_success(stringy)
  else if (type == 'danger') cli::cli_alert_danger(stringy)
  else if (type == 'info') cli::cli_alert_info(stringy)
  else if (type == 'warning') cli::cli_alert_warning(stringy)
  
  return(df)
  
}