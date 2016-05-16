\name{names}
\docType{methods}
\alias{names}
\alias{names,dfplus-method}
\alias{names<-}
\alias{names<-,dfplus-method}

\title{Return Names of Variables contained in dfplus Objects.}
\description{
Application of \code{\link[base]{names}} to objects of class
\code{\link[=dfplus-class]{dfplus}}.
}
\usage{
\S4method{names}{dfplus}(x)

names(x) <- value
}
\arguments{
\item{x}{Object of class \code{\link[=dfplus-class]{dfplus}}.}
\item{value}{Character value or vector with a new name for the respective
	variable.}
}
\details{
The replacement method change the name of the variables both, in the columns of
slot \code{data} and in the rows of the slot \code{metadata}.
For more details, see \code{\link[base]{names}}.
}
\value{
A vector with names of variables or an object of class
\code{\link[=dfplus-class]{dfplus}} with modified variable names.
}
\author{
Miguel Alvarez (\email{malvarez@uni-bonn.de}).
}
\examples{
## Add example for this function
}
\keyword{methods}
