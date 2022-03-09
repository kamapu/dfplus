# TODO:   A function to create dfplus objects
#
# Author: Miguel Alvarez
################################################################################

dfplus <- function(data, metadata, skip.deprecated = TRUE, ...) {
  if (any(c(class(data), class(metadata)) != "data.frame")) {
    stop("arguments 'data' and 'metadata' should be data frames")
  }
  if (!all(names(data) == rownames(metadata))) {
    stop("colnames in 'data' should match rownames in 'metadata'")
  }
  # set factors for data
  Types <- metadata$Type
  ## Types[Types %in% c("factor","Date","deprecated")] <- "character"
  Types[Types %in% c("factor", "deprecated")] <- "character"
  for (i in 1:length(Types)) {
    if (Types[i] == "character") {
      data[, i] <- paste(data[, i])
    } else {
      data[, i] <- as(data[, i], Types[i])
    }
  }
  # formatting factors
  Types <- grep("factor", metadata$Type)
  for (i in Types) {
    data[, i] <- factor(data[, i],
      levels = strsplit(metadata[i, "Values"], ",")[[1]]
    )
  }
  ## # formatting Date
  ## Types <- grep("Date", metadata$Type)
  ## for(i in Types) {
  ##     data[,i] <- as.Date(data[,i], format=metadata[i,"Units"], ...)
  ## }
  # final object
  data <- new("dfplus", data = data, metadata = metadata)
  if (skip.deprecated) data <- skip_deprecated(data)
  return(data)
}
