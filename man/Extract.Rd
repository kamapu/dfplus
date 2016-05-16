\name{Extract}
\docType{methods}
\alias{Extract}
\alias{[,dfplus-method}
\alias{[<-}
\alias{[<-,dfplus-method}
\alias{$,dfplus-method}
\alias{$<-}
\alias{$<-,dfplus-method}

\title{Extract or Replace Parts of dfplus Objects.}
\description{
Operators used to access to \code{\link[=dfplus-class]{dfplus}} objects using
the content of the slot \code{data}.
}
\usage{
\S4method{$}{dfplus}(x, name)
\S4method{[}{dfplus}(x, i, j, ..., drop=FALSE)

x$name <- value
x[i,j] <- value
}
\arguments{
\item{x}{Object of class \code{\link[=dfplus-class]{dfplus}}.}
\item{value}{Vector with replacement values.}
\item{...}{Further arguments passed to or from other methods.}
\item{name}{A name to access (character vector or symbol).}
\item{i,j}{Indices for access.}
\item{drop}{A logical value passed to \code{\link[base]{Extract}}.}
}
\details{
These methods were written for a quick access to the content of slot \code{data}
in \code{\link[=dfplus-class]{dfplus}} objects.
For more details, see \code{\link[base]{Extract}}.
}
\value{
For access methods, a vector.
For replacement methods, an object of class \code{\link[=dfplus-class]{dfplus}}
with modified variables.
}
\author{
Miguel Alvarez (\email{malvarez@uni-bonn.de}).
}
\examples{
## Add example for this function
}
\keyword{methods}
