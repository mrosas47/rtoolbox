#' findShp
#' 
#' @param path folder to use
#'
#' @return list of shapefiles (only .shp)
#' @export findShp
#'
#' @examples 'not yet'
findShp <- function(path) {
  
  pass <- function() {}
  
  allFiles <- list.files(path = path)
  
  bucket <- c()
  
  for (item in allFiles) {
    
    if (str_sub(item, -3, -1) == 'shp') {
      
      bucket <- c(bucket, item)
      
    } else {
      
      pass()
      
    }
    
  }
  
  return(bucket)
  
}