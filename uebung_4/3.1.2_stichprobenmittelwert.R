stichprobenmittelwert <- function(m,n) {

	x = multi_stichprobe(m,n);
	wert = 0;	

	for(i in 1:100){
		wert = wert + x[i];
	}
	
	mittelwert = (wert/100);

	return(mittelwert);
}	