multi_stichprobe <- function(m,n){

	x = (1:100);
	for(i in 1:m){
		x[i] = stichprobe(n);
	}
	
	return(x);
}