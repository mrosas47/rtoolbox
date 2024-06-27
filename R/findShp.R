#' @title Find shapefile
#' 
#' @description Get a list (vector) of .shp files in a directory. Useful when looping over a directory containing all file types that make a shapefile. It allows to easily list and loop over only the .shp files, e.g. when using `sf::st_read()`.
#' 
#' @param path Where to find the shapefiles. 'D:/example/location'
#' 
#' @import stringr
#'
#' @return Vector of shapefiles (only .shp).
#' @export findShp
#'
#' @examples 
#'   findShp('C:/example/location')

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