# TODO:   Some methods specific to dfplus objects
#
# Author: Miguel Alvarez
################################################################################

# Access and replace methods for dollar symbol ---------------------------------
setMethod("$", signature(x = "dfplus"), function(x, name) {
  x@data[[name]]
})

setReplaceMethod("$", signature(x = "dfplus"), function(x, name, value) {
  x@data[[name]] <- value
  # x@metadata[name,]
  return(x)
})

# Access and replace methods for square brakets --------------------------------
setMethod("[", signature(x = "dfplus"), function(x, i, j, ..., drop = FALSE) {
  if (missing(i)) i <- TRUE
  if (missing(j)) j <- TRUE
  # Resolving problems with NAs
  if (is.logical(i)) i[is.na(i)] <- FALSE else i <- na.omit(i)
  if (is.logical(j)) i[is.na(j)] <- FALSE else j <- na.omit(j)
  x@data <- x@data[i, j, drop]
  x@metadata <- x@metadata[j, , drop]
  return(x)
})

setReplaceMethod("[", signature(x = "dfplus"), function(x, i, j, value) {
  if (missing(i)) i <- TRUE
  if (missing(j)) j <- TRUE
  # Resolving problems with NAs
  if (is.logical(i)) i[is.na(i)] <- FALSE else i <- na.omit(i)
  if (is.logical(j)) i[is.na(j)] <- FALSE else j <- na.omit(j)
  x@data[i, j] <- value
  return(x)
})

# head and tail methods --------------------------------------------------------
setMethod("head", signature(x = "dfplus"), function(x, n = 6L, ...) {
  head(x@data, n = n, ...)
})

setMethod("tail", signature(x = "dfplus"), function(x, n = 6L, ...) {
  tail(x@data, n = n, ...)
})

# names ------------------------------------------------------------------------
setMethod("names", signature(x = "dfplus"), function(x) {
  names(x@data)
})

setReplaceMethod("names", signature(x = "dfplus"), function(x, value) {
  names(x@data) <- value
  rownames(x@metadata) <- value
  return(x)
})
