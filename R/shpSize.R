#' @title Size of shapefile
#' 
#' @description Size of shapefile bundle, including all extensions that make up a shapefile.
#'
#' @param shapefile Name of the shapefile.
#'
#' @return Size of shapefile bundle
#' @export shpSize
#'
#' @examples # ''

shpSize <- function(shapefile) {
  
  size <- 0
  f <- layerFiles(shapefile)
  
  for (item in f) {
    
    if (file.exists(item)) {
      
      x <- file.size(item)
      size <- size + x
      
    } else {
      
      next
      
    }
    
  }
  
  return(size)
  
}
