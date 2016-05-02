# TODO:   Some ways to access and set content of dfplus objects
# 
# Author: Miguel Alvarez
################################################################################

# 1: Access and replace methods for dollar symbol ------------------------------
setMethod("$", signature(x="dfplus"), function(x, name) {
            x@data[[name]]
        }
)

setReplaceMethod("$", signature(x="dfplus"), function(x, name, value) {
            x@data[[name]] <- value
            # x@metadata[name,]
            return(x) 
        }
)

# 2: Access and replace methods for square brakets -----------------------------

# 3: Access and replace methods for function names -----------------------------
