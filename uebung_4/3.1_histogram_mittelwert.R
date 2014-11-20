histogram <- function(m,n){

	source("stichprobenmittelwert.R");
	
	mittelwert = stichprobenmittelwert(m,n);
	hist(mittelwert);

}