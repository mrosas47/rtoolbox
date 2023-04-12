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
  
  rest <- arcgisbinding::arc.open(serviceURL)
  layerNames <- as.vector(unlist(rest@children))
  layerIndex <- as.numeric(0:(length(layerNames) - 1))
  
  for (i in layerIndex) {
    
    layer <- arcgisbinding::arc.data2sf(
      arcgisbinding::arc.select(
        arcgisbinding::arc.open(
          stringr::str_glue('{service}/{i}')
        )
      )
    )
    
    layer |> sf::write_sf(stringr::str_glue('{path}/{str_sub(layerNames[i + 1], 3, -1)}.shp'))
    
    lc <- lc + 1
    layerProg <- rtoolbox::as_x100(lc, length(layerIndex))
    message(stringr::str_glue('{layerProg}% -- saved {layerNames[i + 1]}'))
    
  }
  
  return(layer)
  
}