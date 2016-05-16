\name{head}
\docType{methods}
\alias{head}
\alias{head,dfplus-method}
\alias{tail}
\alias{tail,dfplus-method}

\title{Return the First or Last Part of dfplus Objects.}
\description{
Application of \code{\link[utils]{head}} to slot \code{data} in
\code{\link[=dfplus-class]{dfplus}} objects.
}
\usage{
\S4method{head}{dfplus}(x, n=6L, ...)
\S4method{tail}{dfplus}(x, n=6L, ...)
}
\arguments{
\item{x}{Object of class \code{\link[=dfplus-class]{dfplus}}.}
\item{n}{Integer value indicating size of resulting object.}
\item{...}{Further arguments to be passed to or from other methods.}
}
\details{
For more details, see \code{\link[utils]{head}}.
}
\value{
A data frame.
}
\author{
Miguel Alvarez (\email{malvarez@uni-bonn.de}).
}
\examples{
## Add example for this function
}
\keyword{methods}
