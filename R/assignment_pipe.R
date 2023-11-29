#' @title  `magrittr`'s assignment pipe
#' @description Literally the same as magrittr's assignment pipe `%<>%`. Just did not want to call `library(magrittr, include.only = '%<>%')` every time I wanted to use it, and since I do load `rtoolbox` every time it was simpler to have it here.
#' @import magrittr
#' @export %<>%
#' @examples # Will do this later
#' @return Same logic as magrittr's assignment pipe

`%<>%` <- magrittr::`%<>%`