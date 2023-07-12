#' @title Find TIFs
#' 
#' @description Get a list (vector) of .tif files in a directory.
#'
#' @param path Where to find the TIFs
#' 
#' @import stringr
#'
#' @return Vector of TIFs
#' @export findTif
#'
#' @examples
#'   # Example

findTif <- function(path, full = F) {
  
  pass <- function() {}
  
  bin <- c()
  
  if (full) {
    
    allFiles <- list.files(path = path, full.names = T)
    
  } else {
    
    allFiles <- list.files(path = path)
    
  }
  
  for (i in allFiles) {
    
    if (stringr::str_sub(i, -3, -1) %in% c('tif', 'tiff')) {
      
      bin <- c(bin, i)
      
    } else {
      
      pass()
      
    }
    
  }
  
  return(bin)
  
}