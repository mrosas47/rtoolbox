#' Readable file size
#'
#' @param path Where to find the file in question.
#'
#' @return File size in a readable format.
#' @export fileSize
#'
#' @examples # fileSize('path/to/file.example')

fileSize <- function(path) {
  
  size <- file.size(path)
  
  if (size < 1024) {
    
    paste(size, 'bytes')
    
  } else if (size < 1024 ^ 2) {
    
    paste(round(size / 1024, 2), 'KB')
    
  } else if (size < 1024 ^ 3) {
    
    paste(round(size / 1024 ^ 2, 2), 'MB')
    
  } else {
    
    paste(round(size / 1024 ^ 3, 2), 'GB')
    
  }
  
}
