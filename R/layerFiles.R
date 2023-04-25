#' File that make a shapefile
#'
#' @param shapefile Name of the shapefile in question.
#' 
#' @import stringr
#'
#' @return Vector 
#' @export layerFiles
#'
#' @examples # layerFiles()

layerFiles <- function(shapefile) {
  
  end <- stringr::str_sub(shapefile, -1, -3)
  extList <- c('cpg', 'dbf', 'prj', 'sbn', 'sbx', 'shp', 'shp.xml', 'shx')
  
  if (end == 'shp') {
    
    prefix <- stringr::str_sub(shapefile, 1, -5)
    
  } else {
    
    prefix <- shapefile
    
  }
  
  bucket <- c()
  
  for (e in extList) {
    
    stringy <- paste(prefix, e, sep = '.')
    bucket <- c(bucket, stringy)
    
  }
  
  return(bucket)
  
}