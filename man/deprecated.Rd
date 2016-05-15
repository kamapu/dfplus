\name{deprecated}
\docType{methods}
\alias{deprecated}
\alias{deprecated,dfplus-method}
\alias{deprecated<-}
\alias{deprecated<-,dfplus,character-method}
\alias{skip_deprecated}
\alias{skip_deprecated,dfplus-method}

\title{Set, Retrieve and Skip Deprecated Variables.}
\description{
The variable class \code{"deprecated"} is implemented in the package
\code{dfplus} as an alternative to avoid deletion of columns in the input files.
}
\usage{
\S4method{deprecated}{dfplus}(x, ...)
\S4method{skip_deprecated}{dfplus}(x, ...)

deprecated(x) <- value
}
\arguments{
\item{x}{An object of class \code{\link[=dfplus-class]{dfplus}}.}
\item{value}{A character vector with the names of variables to be set as
	deprecated.}
\item{...}{Further arguments passed to or from other methods.}
}
\details{
The variable class \code{"deprecated"} is useful to indicate variables in input
spreadsheets that may be irrelevant or redundant.
In such cases the application of \code{deprecated} is less risky than deleting
such columns from the table.

The first method in \bold{Usage} retrieves a logical vector indicating which
variables are deprecated, while the last one is used to set variables as
deprecated.

The function \code{skip_deprecated} will delete deprecated variables from the
\code{dfplus} object.
}
\value{
A logical vector or an object of class \code{\link[=dfplus-class]{dfplus}}.
}
\author{
Miguel Alvarez (\email{malvarez@uni-bonn.de}).
}
\examples{
## Add example for this function
}
\keyword{methods}
