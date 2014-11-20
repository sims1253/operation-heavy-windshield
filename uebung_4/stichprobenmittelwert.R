stichprobenmittelwert <- function(m,n) {

	source("multi_stichprobe.R");

	x = multi_stichprobe(m,n);
	wert = 0;
	mittelwert = matrix(, nrow = m, ncol = 1);	
	for(j in 1:m){
		for(i in 1:n){
			wert = wert + x[j,i];
		}
		mittelwert[j,1] = (wert/n);
		wert = 0;
	}

	return(mittelwert);
}	