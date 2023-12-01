#' @title  `magrittr`'s assignment pipe
#' @description Literally the same as magrittr's assignment pipe `%<>%`. Just did not want to call `library(magrittr, include.only = '%<>%')` every time I wanted to use it, and since I do load `rtoolbox` every time it was simpler to have it here.
#' @import magrittr
#' @export %<>%
#' @return Same logic as magrittr's assignment pipe
#' @examples 
#'   foo <- data.frame(x = 1:10, y = 11:20)
#'   foo %<>% dplyr::mutate(z = x + y)
#'   foo


`%<>%` <- magrittr::`%<>%`