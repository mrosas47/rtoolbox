silent <- function(expr) {
  
  suppressWarnings({
    suppressMessages({
      expr
    })
  })
  
}
