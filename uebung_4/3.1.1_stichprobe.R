multi_stichprobe <- function(m,n){

	source("stichprobe.R");

	data <- read.table('/mnt/daten/development/git/operation-heavy-windshield/uebung_4/messung.txt');
	x = matrix(, nrow = m, ncol = n);
	for(i in 1:m){
		x[i,] = stichprobe(n,data);
	}
	
	return(x);
}