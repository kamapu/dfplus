\name{dfplus}
\alias{dfplus}

\title{Create a dfplus Object.}
\description{
Create a \code{\link[=dfplus-class]{dfplus}} object from two data frames, one
for the slot \code{data} and one for the slot \code{metadata}.
}
\usage{
dfplus(data, metadata, skip.deprecated=TRUE, ...)
}
\arguments{
\item{data}{A data frame including the input data.}
\item{metadata}{A data frame with information on variables stored in
	\code{data} (thus metadata).}
\item{skip.deprecated}{A logical vector indicating whether deprecated variables
	should be skipped in the final object or not.}
\item{...}{Further arguments passed to function \code{\link{as.Date}}.}
}
\details{
This function can be used in combination with \code{\link{read.table}} and
similar ones in order to produce object of class
\code{\link[=dfplus-class]{dfplus}} from spreadsheets.

This function set the classes of columns in slot \code{data} using the
information stored in \code{metadata} (column \code{Type}), in most of the cases
using the function \code{\link{as}}.
For character variables, the function \code{\link{paste}} will be used.

Variables indicated as class \code{\link{Date}} will be set using the function
\code{\link{as.Date}}.
The format should be than indicated in slot \code{metadata}, column
\code{Units}.

For factors, levels should be included in slot \code{metadata}, column
\code{Values}, where levels are separated by commas.
}
\value{
An object of class \code{\link[=dfplus-class]{dfplus}}.
}
\author{
Miguel Alvarez (\email{malvarez@uni-bonn.de}).
}
\examples{
## Add example for this function
}
