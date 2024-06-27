#' @title Time tag
#'
#' @param full_date Whether to include year
#' @param full_time Whether to include seconds
#'
#' @return time tag in format ddMMyyhhmmss
#' @export time_tag
#'
#' @examples # not yet

time_tag <- function(full_date = F, full_time = F) {
  
  date <- stringr::str_split(rdate(), '-')
  time <- stringr::str_split(rtime(), ':')
  
  stringy <- ''
  
  if (full_date) stringy <- paste(stringy, date[[1]][1], date[[1]][2], stringr::str_sub(date[[1]][3], 3, 4), sep = '')
  else stringy <- paste(stringy, date[[1]][1], date[[1]][2], sep = '')
  
  if (full_time) stringy <- paste(stringy, time[[1]][1], time[[1]][2], time[[1]][3], sep = '')
  else stringy <- paste(stringy, time[[1]][1], time[[1]][2], sep = '')
  
  return(stringy)
  
}
