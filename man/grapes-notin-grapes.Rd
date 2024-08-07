% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/notin.R, R/rm_all.R
\name{\%notin\%}
\alias{\%notin\%}
\title{Not in operator}
\usage{
... \%notin\% NA

... \%notin\% NA
}
\arguments{
\item{except}{Vector of names of objects to keep.}
}
\value{
T or F

Clears global environment.
}
\description{
Literally the opposite of %in% and exactly the same as using !, but it's more explicit and easier to read.

Remove all objects from environment. Direct implementation of `rm(list = ls(envir = globalenv()))`. Also gives the option to keep specific objects. Skips non-existing objects in the `except` vector.
}
\examples{
  'x' \%notin\% c('y', 'z')
  'x' \%notin\% c('x', 'y', 'z')
  rm_all()
}
