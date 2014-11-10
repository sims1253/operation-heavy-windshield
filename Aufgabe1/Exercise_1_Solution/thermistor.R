thermistor <- function(temperature, R1, U, A) {
      # Lade thermistor.txt
	kennlinie <- read.table("E:/Lehre/mdv/2014w/tutorial/tutorial_1/kennlinie.txt")
	# runde die eingangstemperatur
	value = round(temperature)
	# suche die temperatur in der Liste
	inds <- which(kennlinie[,1] %in% value)
	# falls die Temperatur nicht gefunden wurde gebe -1 aus
	if(length(inds)==0){
		return(-1);
	} else{
		R_th = kennlinie[inds,2];
		U_th = A*R_th/(R1+R_th)*U;
		return(U_th);
      }
}
