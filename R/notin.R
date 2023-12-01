#' @title  Not in operator
#' @description Literally the opposite of %in% and exactly the same as using !, but it's more explicit and easier to read.
#' @export %notin%
#' @return T or F
#' @examples 
#'   'x' %notin% c('y', 'z')
#'   'x' %notin% c('x', 'y', 'z')


`%notin%` <- Negate(`%in%`)
