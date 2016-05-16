\name{dfplus-package}
\docType{package}
\alias{dfplus-package}

\title{Data Frames including Metadata.}
\description{
This package offers a class \code{\link[=dfplus-class]{dfplus}}, which is
a data frame with metadata showing properties of the contained variables.
Some methods are also implemented in order to handle those objects in the same
way as ordinary data frames.

In this function a new class of variables is implemented, namely
\code{\link{deprecated}} variables.

Further aims of this package is to implement units conversions and building of
axes labels for plots.
}
\author{
Miguel Alvarez (\email{malvarez@uni-bonn.de}).
}
\examples{
\dontrun{
## Installing the last version from GitHub
library(devtools)
install_github("kamapu/dfplus")
}
}
