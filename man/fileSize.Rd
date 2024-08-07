% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fileSize.R
\name{fileSize}
\alias{fileSize}
\title{Readable file size}
\usage{
fileSize(path)
}
\arguments{
\item{path}{Where to find the file in question.}
}
\value{
File size in a readable format.
}
\description{
Returns the file size in a readable format; useful for reporting exported file size in console.
}
\examples{
  fileSize('path/to/file.example')
}
