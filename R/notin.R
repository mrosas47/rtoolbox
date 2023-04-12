#' @title  Not in there
#' @description Literally the opposite of %in% and exactly the same as using !, but it's more explicit and easier to read.
#' @export %notin%
#' @examples # 'x' %notin% c('y', 'z')
#' @return T or F

`%notin%` <- Negate(`%in%`)
