#' @title  `roperators`'s plus-equal
#' @description Literally the same as roperators's `%+=%`. Just did not want to call `library(roperators, include.only = '%+=%')` every time I wanted to use it, and since I do load `rtoolbox` every time it was simpler to have it here.
#' @import roperators
#' @export %+=%
#' @examples # Will do this later
#' @return Same logic as ropreators's `%+=%`

`%+=%` <- roperators::`%+=%`