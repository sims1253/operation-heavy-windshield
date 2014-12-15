toleranzfeld <- function(){

	data = matrix(, nrow=15, ncol=1);

	temp_data <- read.table('/mnt/daten/development/git/operation-heavy-windshield/uebung_7/aufgabe2.txt');

	for(i in 1:15){
		data[i,1] = temp_data[i,1];
	}

	hist_breaks = seq(3.3,3.7,0.05);
	hist(data,hist_breaks);

}