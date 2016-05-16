# TODO:   Some functions to handle deprecated variables in dfplus objects
# 
# Author: Miguel Alvarez
################################################################################

# deprecated -------------------------------------------------------------------
setGeneric("deprecated", function(x, ...)
            standardGeneric("deprecated"))

setMethod("deprecated", signature(x="dfplus"),
        function(x, ...) return(x@metadata$Type == "deprecated")
)

# replacement method
setGeneric("deprecated<-", function(x, value)
            standardGeneric("deprecated<-"))

setReplaceMethod("deprecated", signature(x="dfplus", value="character"),
        function(x, value) {
            x@metadata[value, "Type"] <- "deprecated"
            return(x)
        }
)

# skip_deprecated --------------------------------------------------------------
setGeneric("skip_deprecated", function(x, ...)
            standardGeneric("skip_deprecated"))

setMethod("skip_deprecated", signature(x="dfplus"),
        function(x, ...) {
            Index <- x@metadata$Type == "deprecated"
            x <- new("dfplus",
                    data=x@data[,!Index,drop=FALSE],
                    metadata=x@metadata[!Index,,drop=FALSE])
            return(x)
        }
)
