# TODO:   Set a S4 object for added curves
# 
# Author: Miguel Alvarez
################################################################################

setClass("dfplus", slots=c(
				data="data.frame",
				metadata="data.frame"),
		prototype=list(
                data=data.frame(),
                metadata=data.frame(LongName=character(), Type=character(),
                        Units=character(), Values=character(),
                        Description=character(), stringsAsFactors=FALSE)),
		validity=function(object) {
			if(!all(colnames(object@data) == rownames(object@metadata)))
				return("column names in slot 'data' do not match row names in slot 'metadata'")
			if(!all(c("LongName","Type","Units","Values","Description") %in%
							names(object@metadata)))
				return("column names LongName, Type, Units, Values, and Description are mandatory in slot 'metadata'")
		})
