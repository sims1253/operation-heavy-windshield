thermistor_real <- function(temperature, R1, U, A) {
      # Lade thermistor.txt
	kennlinie <- read.table("E:/Lehre/mdv/2014w/tutorial/kennlinie.txt")
	# runde die eingangstemperatur
	value = round(temperature)
	# suche die temperatur in der Liste
	inds <- which(kennlinie[,1] %in% value)
	# falls die Temperatur nicht gefunden wurde gebe -1 aus
	if(length(inds)==0){
		return(-1);
	} else{
		Ri = 10*10^6;
		Rr = 1.05*R1;

		R_th = kennlinie[inds,2];
		R_m = (Ri*R_th)/(Ri+R_th);
		
		U_th = A*R_m/(Rr+R_m)*U;
		return(U_th);
      }

}
