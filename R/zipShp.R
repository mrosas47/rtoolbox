#' @title Zip shapefile
#' 
#' @description Starting from a .shp file, finds all the files (.cpg, .dbf, .prj, .sbn, .sbx, .shp, .shp.xml, .shx) with the same name and zips them together to a .zip.
#' 
#' @param shapefile Name of the shapefile. This will also be the name of the zipfile. 'example.shp'
#' @param shpDir Where to find the shapefile. 'D:/example/shpLocation'
#' @param zipDir Where to save the .zip file. 'D:/example/output'
#' 
#' @import zip
#' @import stringr
#'
#' @return Saves zipped shapefile to shpDir.
#' @export zipShp
#'
#' @examples # zipShp('someShp.shp', 'D:/example/shpLocation', 'D:/example/output')
#' # Would create D:/example/output/someShp.zip from:
#' # - someShp.cpg
#' # - someShp.dbf
#' # - someShp.prj
#' # - someShp.sbn
#' # - someShp.sbx
#' # - someShp.shp
#' # - someShp.shp.xml
#' # - someShp.shx

zipShp <- function(shapefile, shpDir, zipDir) {
  
  extList <- c('cpg', 'dbf', 'prj', 'sbn', 'sbx', 'shp', 'shp.xml', 'shx')
  prefix <- dplyr::case_when(
    stringr::str_sub(shapefile, -3, -1) == 'shp' ~ stringr::str_sub(shapefile, 1, -5),
    T ~ shapefile
  )
  bucket <- c()
  
  for (ext in extList) {
    
    pc <- pc + 1
    fileName <- paste(zipDir, '/', prefix, '.', ext, sep = '')
    bucket <- c(bucket, fileName)
    
  }
  
  rtoolbox::zip0(
    zipfile = stringr::str_glue('{dirPath}/{prefix}.zip'),
    files = bucket
  )
  
  zipfile = stringr::str_glue('{dirPath}/{prefix}.zip')
  message(stringr::str_glue('Zipped {shapefile} as {zipfile} ({fileSize(zipfile)})'))
  
}