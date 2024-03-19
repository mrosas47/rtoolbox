#' @title Gibberish generator
#'
#' @param n length
#' @param low_alpha include lower alpha
#' @param upp_alpha include upper alpha
#' @param num include numeric
#' @param sym include ascii symbols
#' @param blacklist symbols to remove from character pool
#'
#' @return gibberish
#' @export gibberish
#'
#' @examples for (i in 1:50) gibberish(i)

gibberish <- function(n = 15, low_alpha = T, upp_alpha = T, num = T, sym = T, blacklist = c()) {
  
  lows <- letters
  upps <- LETTERS
  nums <- as.character(0:9)
  syms <- strsplit(intToUtf8(c(33, 35:46, 58:64, 91, 93:95, 126)), '')[[1]]
  
  pool <- c()
  
  if (low_alpha) pool <- c(pool, lows)
  if (upp_alpha) pool <- c(pool, upps)
  if (num) pool <- c(pool, nums)
  if (sym) pool <- c(pool, syms)
  
  pool %<>% setdiff(blacklist)
  
  set.seed(sample(0:1000000, 1))
  
  for (i in sample(50:100, 1)) pool %<>% sample()
  
  stringy <- paste0(sample(pool, n, replace = T), sep = '', collapse = '')
  return(stringy)
  
}
