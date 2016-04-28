\name{dfplus-class}
\docType{class}
\alias{dfplus-class}

\title{Class \sQuote{dfplus}.}
\description{
This class provides an object with a slot \code{data} as a common data frame and
a slot \code{metadata} with the description of the variables.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("dfplus", ...)}.
}
\section{Slots}{
\describe{
	\item{\code{data}:}{Object of class
		\code{\link[=data.frame-class]{data.frame}} with input data.}
	\item{\code{metadata}:}{Object of class \code{"data.frame"} containing the
    	information regarding variables of slot \code{data}.}
}
}
\author{
Miguel Alvarez (\email{malvarez@uni-bonn.de}).
}
\examples{
## Example by default
showClass("dfplus")
}
\keyword{classes}
