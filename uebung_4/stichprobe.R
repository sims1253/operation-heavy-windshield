stichprobe <- function(n,data) {

	l <- nrow(data);
	#print(l)
	samples =round(runif(n,1,l));
	return(data[samples,1]);

	}
