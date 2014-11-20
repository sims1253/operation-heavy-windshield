variance_mittelwert <- function(){

	m = 100;
	variance = matrix(, nrow = 100, ncol = 1);

	for(n in 1:100){
		mittelwert = stichprobenmittelwert(m,n);
		variance_temp = var(mittelwert);
		variance[n,1] = variance_temp;
	}

	x = (1:100);
	plot(x,variance);
}
		