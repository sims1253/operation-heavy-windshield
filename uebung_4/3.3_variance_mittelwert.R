variance_mittelwert <- function(m, b){

	source("stichprobenmittelwert.R");

	variance = matrix(, nrow = m, ncol = 1);
	for(n in 1:b){
		mittelwert = stichprobenmittelwert(m,n);
		variance_temp = var(mittelwert);
		variance[n,1] = variance_temp;
	}
	x = (1:m);
	plot(x,variance);
}
		