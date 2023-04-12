#' @title Find shapefile
#' 
#' @description Get a list (vector) of .shp files in a directory.
#' 
#' @param path Where to find the shapefiles. 'D:/example/location'
#' 
#' @import stringr
#'
#' @return Vector of shapefiles (only .shp).
#' @export findShp
#'
#' @examples # findShp('D:/example/location')

findShp <- function(path) {
  
  pass <- function() {}
  
  allFiles <- list.files(path = path)
  bucket <- c()
  
  for (item in allFiles) {
    
    if (stringr::str_sub(item, -3, -1) == 'shp') {
      
      bucket <- c(bucket, item)
      
    } else {
      
      rtoolbox::pass()
      
    }
    
  }
  
  return(bucket)
  
}