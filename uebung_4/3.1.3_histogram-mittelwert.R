histogram <- function(m,n){

	source("3.1.2_stichprobenmittelwert.R");
	
	mittelwert = stichprobenmittelwert(m,n);
	hist(mittelwert);

}