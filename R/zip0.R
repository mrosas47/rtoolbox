#' @title Zip but skip non-existant files
#' 
#' @description Zip but skip non-existant files
#'
#' @param zipfile 
#' @param files 
#' @param overwrite 
#' @param mode 
#'
#' @return NULL
#' @export zip0
#'
#' @examples # ''
zip0 <- function(zipfile, files, overwrite = TRUE, mode = 'mirror') {
  
  if (file.exists(zipfile) && !overwrite) {
    
    message(paste("Zip file ", zipfile, " already exists. Use 'overwrite = TRUE' to overwrite."))
    return(NULL)
    
  }
  
  valid_files <- c()
  
  for (file in files) {
    
    if (file.exists(file)) {
      
      valid_files <- c(valid_files, file)
      
    } else {
      
      message(paste("Skipping ", file))
      
    }
  }
  
  if (length(valid_files) == 0) {
    
    message("No valid files to add to zip archive.")
    return(NULL)
    
  }
  
  zip::zip(zipfile, valid_files, mode = mode)
  message(str_glue("Successfully created zip archive {zipfile} ({fileSize(zipfile)})"))
  
}
