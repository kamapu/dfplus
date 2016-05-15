# TODO:   Script to do imports of WET-health data set
# 
# Author: Miguel Alvarez
################################################################################

# Installing last version
library(devtools)
install_github("kamapu/dfplus")

# Get data
library(dfplus)
setwd(file.path(path.package("dfplus"), "wethealth"))

wethealth <- dfplus(data=read.csv("wethealth_data.csv", stringsAsFactors=FALSE),
        metadata=read.csv("wethealth_metadata.csv", row.names=1,
                stringsAsFactors=FALSE),
        skip.deprecated=FALSE)

validObject(wethealth)
