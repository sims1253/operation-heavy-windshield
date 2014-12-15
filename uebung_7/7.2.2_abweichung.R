abweichung <- function(temp = c("help","s_a","a_t")){

	data = matrix(, nrow=15, ncol=1);

	temp_data <- read.table('/mnt/daten/development/git/operation-heavy-windshield/uebung_7/aufgabe2.txt');

	for(i in 1:15){
		data[i,1] = temp_data[i,1];
	}

	if(temp == "s_a"){
		s_a = sqrt(var(data));
		cat("Standardabweichung:")
		return(s_a);
	}

	if(temp == "a_t"){
		xsmin = 3.2;
		xsmax = 3.6;
		mittelwert = mean(data);
		a_t = ((0.5*(xsmax+xsmin)) - mittelwert);
		return(a_t);
	}

	if(temp == "help"){
		cat("Possible input arguments: \n temp='s_a' for getting the Standardabweichung; \n temp='a_t' for the Abweichung von der Toleranzfeldmitte \n\n");	
	}

	
}