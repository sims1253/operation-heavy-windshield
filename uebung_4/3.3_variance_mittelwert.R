variance_mittelwert <- function(m, b){

	source("stichprobenmittelwert.R");

	#m = 100;
	variance = matrix(, nrow = 100, ncol = 1);

	for(n in 1:b){
		mittelwert = stichprobenmittelwert(m,n);
		variance_temp = var(mittelwert);
		variance[n,1] = variance_temp;
	}

	x = (1:100);
	plot(x,variance);
}
		