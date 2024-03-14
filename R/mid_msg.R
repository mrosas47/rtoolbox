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

pipe_msg <- function(df, msg, type = NULL) {
  
  if (is.null(type)) cli::cli_text(msg)
  else if (type == 'alert') cli::cli_alert(msg)
  else if (type == 'success') cli::cli_alert_success(msg)
  else if (type == 'danger') cli::cli_alert_danger(msg)
  else if (type == 'info') cli::cli_alert_info(msg)
  else if (type == 'warning') cli::cli_alert_warning(msg)
  
  return(df)
  
}