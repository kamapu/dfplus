# TODO:   Message displayed on start (modified from vegdata)
# 
# Author: Miguel Alvarez
################################################################################

.onAttach <- function(lib, pkg)  {
    packageStartupMessage("This is dfplus ",
            utils::packageDescription("dfplus", field="Version"),
            appendLF=TRUE)
}
