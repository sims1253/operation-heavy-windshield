multi_stichprobe <- function(m,n){

	source("stichprobe.R");

	# Read the data once so it doesn't take a century
	data <- read.table('C:/Users/m0hawk/Documents/operation-heavy-windshield/uebung_4/messung.txt');
	x = matrix(, nrow = m, ncol = n);
	for(i in 1:m){
		x[i,] = stichprobe(n,data);
	}	
	return(x);
}

