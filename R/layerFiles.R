#' @title List files that make up a shapefile
#'
#' @description Get a vector containing all files that make up a shapefile. 
#'
#' @param shapefile Name of the shapefile in question.
#' @param full.names Whether to return full names (full path) or not. Default is `TRUE`.
#' @param only.existent Whether to return only files that exist. Default is `FALSE`, so it will return a list of all possible files that will make the shapefile. If you only need the ones that actually exist, set this to `TRUE`.
#' 
#' @import stringr
#' @import roperators
#'
#' @return Vector 
#' @export layerFiles
#'
#' @examples 
#'  layerFiles('example.shp')

layerFiles <- function(shapefile, full.names = T, only.existent = F) {
  
  end <- stringr::str_sub(shapefile, -3, -1)
  directory <- dirname(shapefile)
  extList <- c('cpg', 'dbf', 'prj', 'sbn', 'sbx', 'shp', 'shp.xml', 'shx')
  filename <- stringr::str_sub(basename(shapefile), 1, -5)
  bucket <- c()
  
  if (!only.existent) {
    
    for (e in extList) {
      
      stringy <- ifelse(full.names, stringr::str_glue('{directory}/{filename}.{e}'), paste(filename, e, sep = '.'))
      
      bucket <- c(bucket, stringy)
      
    }
    
  } else if (only.existent) {
    
    for (e in extList) {
      
      stringy <- ifelse(full.names, stringr::str_glue('{directory}/{filename}.{e}'), paste(filename, e, sep = '.'))
      
      if (file.exists(stringy)) {
        
        bucket <- c(bucket, stringy)
        
      } else {
        
        pass()
        
      }
      
    }
    
  }
  
  return(bucket)
  
}
