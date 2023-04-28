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

layerFiles <- function(shapefile, full.names = T) {
  
  end <- stringr::str_sub(shapefile, -3, -1)
  directory <- dirname(shapefile)
  extList <- c('cpg', 'dbf', 'prj', 'sbn', 'sbx', 'shp', 'shp.xml', 'shx')
  
  if (end == 'shp' & full.names == F) {
    
    prefix <- stringr::str_sub(shapefile, 1, -5)
    
  } else if (end != 'shp' & full.names == F) {
    
    prefix <- shapefile
    
  } else if (end == 'shp' & full.names == T) {
    
    prefix <- stringr::str_sub(basename(shapefile), 1, -5)
    
  } else if (end != 'shp' & full.names == T) {
    
    prefix <- stringr::str_sub(basename(shapefile), 1, -5)
    
  } else {
    
    message('am confused')
    
  }
  
  bucket <- c()
  
  if (full.names == T) {
    
    for (e in extList) {
      
      stringy <- stringr::str_glue('{directory}/{prefix}.{e}')
      bucket <- c(bucket, stringy)
      
    }
    
  } else {
    
    for (e in extList) {
      
      stringy <- paste(prefix, e, sep = '.')
      bucket <- c(bucket, stringy)
      
    }
    
  }
  
  return(bucket)
  
}
