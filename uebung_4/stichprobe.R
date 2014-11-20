stichprobe <- function(n) {

      values <- read.table('/mnt/daten/documents/1-uni/7._semester/messtechnik/uebung/mdv/uebung_4/messung.txt');
	l <- nrow(values);
	#print(l)
	samples =round(runif(n,1,l));
	return(values[samples,1]);

	}
