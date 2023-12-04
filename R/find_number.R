#' @title Find numbers in a string
#'
#' @description Finds numbers qithin a string. Can find any specified number of digits and can return either the first instances or all instances.
#' 
#' @param string String in which to look
#' @param digits Number of digits to match
#' @param all Logical. Wether or not to include all instances. If F, will return only the first one.
#' 
#' @import stringr
#' 
#' @export find_number
#'
#' @return Vector with the found numbers.
#' 
#' @examples 
#' find_number('There are 123 apples and 456 oranges', digits = 3, all = T)
#' find_number('My number is 42', all = TRUE)
#' find_number('No numbers here', digits = 1)

find_number <- function(string, digits = NULL, all = F) {

  if (is.null(digits)) {
    
    pattern <- "\\d+"
    
  } else {
    
    pattern <- paste0("\\d{", digits, "}")
    
  }
  
  numbers <- stringr::str_extract_all(string, pattern)
  
  numbers <- as.numeric(unlist(numbers))
  
  if (!all && length(numbers) > 0) {
    
    numbers <- numbers[1]
    
  }
  
  return(numbers)
  
}

