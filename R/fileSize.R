#' @title Readable file size
#'
#' @description Returns the file size in a readable format; useful for reporting exported file size in console.
#' @param path Where to find the file in question.
#'
#' @return File size in a readable format.
#' @export fileSize
#'
#' @examples 
#'   fileSize('path/to/file.example')

fileSize <- function(path) {
  
  size <- file.size(path)
  
  if (size < 1024) {
    
    fSize <- paste(size, 'Bytes')
    
  } else if (size < 1024 ^ 2) {
    
    fSize <- paste(round(size / 1024, 2), 'KB')
    
  } else if (size < 1024 ^ 3) {
    
    fSize <- paste(round(size / 1024 ^ 2, 2), 'MB')
    
  } else if (size < 1024 ^ 4) {
    
    fSize <- paste(round(size / 1024 ^ 3, 2), 'GB')
    
  } else if (size < 1024 ^ 5) {
    
    fSize <- paste(round(size / 1024 ^ 4, 2), 'TB')
    
  }
  
  return(fSize)
  
}
