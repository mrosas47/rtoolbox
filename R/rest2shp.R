#' @title REST service to shapefile
#' 
#' @description Saves an ArcGIS web layer as a shapefile.
#'
#' @param serviceURL URL of the REST service. Must be type FeatureServer. 'https://example.com/server/rest/services/someFolder/someWebApp/FeatureServer'
#' @param path Where to save the layers. 'D:/example/saveDir'
#' 
#' @import arcgisbinding
#' @import stringr
#' @import sf
#'
#' @return Saves shapefiles to path
#' @export rest2shp
#'
#' @examples # rest2shp('https://example.com/server/rest/services/someFolder/someWebApp/FeatureServer', 'D:/example/saveDir')

rest2shp <- function(serviceURL, path) {
  
  tryCatch({
    
    arcgisbinding::arc.check_product()
    
    lc <- 0
    rest <- arcgisbinding::arc.open(serviceURL)
    layerNames <- as.vector(unlist(rest@children))
    layerIndex <- as.numeric(0:(length(layerNames) - 1))
    
    for (i in layerIndex) {
      
      tryCatch({
      
        suppressMessages({
          
        link <- paste(s, '/', as.character(layerIndex[i + 1]), '/query?where=1%3D1&outFields=*&f=pjson', sep = '')
        layer <- sf::st_read(link)
        layer |> sf::st_write(stringr::str_glue('{path}/{stringr::str_sub(layerNames[i + 1], 3, -1)}.shp'))
          
        })
        
        rm(link)
        rm(layer)
        gc()
        
        lc <- lc + 1
        layerProg <- rtoolbox::as_x100(lc, length(layerIndex))
  
        message(stringr::str_glue('{layerProg}% -- saved {stringr::str_sub(layerNames[i + 1], 3, -1)}'))
        
        # Sys.sleep(60)
        
      },
      error = function(e) {
        
        message(stringr::str_glue('Layer {stringr::str_sub(layerNames[i + 1], 3, -1)} failed to download.'))
        next
        
      })
      
    }
    
  },
  error = function(e) {
    
    message(stringr::str_glue('{serviceURL} generated a server error and was unable to generate a response.'))
    
  })
  
}
