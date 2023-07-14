#' Silent -- no messages or warnings
#'
#' @param expr 
#'
#' @return expr with no messages or warnings
#' @export silent
#'
#' @examples # none
silent <- function(expr) {
  
  suppressWarnings({
    suppressMessages({
      expr
    })
  })
  
}
