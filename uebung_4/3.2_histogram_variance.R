histogram_variance <- function(m,n){

	source("multi_stichprobe.R");

	x = multi_stichprobe(m,n);
	variance = matrix(, nrow = m, ncol = 1);
	for(i in 1:m){
		variance[i,1] = var(x[i,]);
	}	
	hist(variance);
}