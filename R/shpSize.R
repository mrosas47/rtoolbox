#' @title Size of shapefile
#' 
#' @description Size of shapefile bundle, including all extensions that make up a shapefile. Useful for reporting.
#'
#' @param shapefile Name of the shapefile.
#'
#' @return Size of shapefile bundle
#' @export shpSize
#'
#' @examples
#'   shpSize('example.shp')

shpSize <- function(shapefile) {
  
  bucket <- c()
  f <- rtoolbox::layerFiles(shapefile)
  
  for (item in f) {
    
    if (file.exists(item) == T) {
      
      x <- file.size(item)
      bucket <- c(bucket, x)
      
    } else if (file.exists(item) == F) {
      
      next
      
    }
    
  }
  
  size <- sum(bucket, na.rm = T)
  
  if (size < 1024) {
    
    fSize <- paste(size, 'bytes')
    
  } else if (size < 1024 ^ 2) {
    
    fSize <- paste(round(size / 1024, 2), 'KB')
    
  } else if (size < 1024 ^ 3) {
    
    fSize <- paste(round(size / 1024 ^ 2, 2), 'MB')
    
  } else if (size < 1024 ^ 4) {
    
    fSize <- paste(round(size / 1024 ^ 3, 2), 'GB')
    
  } else {
    
    fSize <- paste(round(size / 1024 ^ 4, 2), 'TB')
    
  }
  
  return(fSize)
  
}
