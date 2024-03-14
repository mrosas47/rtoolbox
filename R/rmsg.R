#' @title R message
#'
#' @param msg a message
#'
#' @return formatted message
#' @export rmsg
#'
#' @examples # not yet

rmsg <- function(msg) return(stringr::str_glue('{rtime()} -- {msg}'))