hypothesentest <- function(){

	hist_data = matrix(, nrow=90, ncol=1);

	data <- read.table('C:/Users/m0hawk/Documents/operation-heavy-windshield/uebung_7/aufgabe1.txt');

	for(i in 1:90){
		hist_data[i,1] = data[i,1];
	}

	hist_breaks = c(33.0, 35.1, 35.6, 36.1, 36.6, 37.1, 37.6, 38.0, 39.0);

	hist(hist_data,hist_breaks);
	
	#par(new=TRUE); # Befehl erlaubt mehrere Graphen übereinander zu legen
	cat("Press [enter]");
	readline();

	y = rnorm(90, mean=36.44, sd=0.9);
	hist(y, hist_breaks);
}
