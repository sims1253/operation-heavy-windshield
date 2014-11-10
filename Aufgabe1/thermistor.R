thermistor <- function(T, R1, Vq) {
#Workdirectory setzen und Kennlinie laden
	setwd("C:/Users/m0hawk/Documents/operation-heavy-windshield/Aufgabe1/")
	kenn = read.table("kennlinie.txt")

#In der Kennlinie nach der Temperatur T suchen hit=Zeile(n) des Treffers
	hit = which(kenn[,1] %in% T)
#Wenn keine Treffer, gib -1 zurück
	if(length(hit)==0)
	{
		return(-1)
	}
#Sonst berechne die Spannung mittels Spannungsteiler und gib sie zurück
	else
	{
		Uth=((hit)/(R1+hit))*Vq
		return(Uth)
	}

}