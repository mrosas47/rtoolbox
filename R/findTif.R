#' @title Find TIFs
#' 
#' @description Get a list (vector) of .tif files in a directory. Useful when looping over a directory that contains .tif files that come with .aux files.
#'
#' @param path Where to find the TIFs
#' 
#' @import stringr
#'
#' @return Vector of TIFs
#' @export findTif
#'
#' @examples
#'   findTif('C:/example/location')

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