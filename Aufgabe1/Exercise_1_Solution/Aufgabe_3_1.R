# Aufgabe 2: Realeres Messinstrument

rm(list=ls());

# setze Arbeitsverzeichnis und lade die eigene Funktion
setwd('E:/Lehre/mdv/2014w/tutorial/');
source("thermistor.R")
source("thermistor_real.R")

# Daten zum Versuchsaufbau
A = 1;
U_s = 10;
R1 = 220*10^3;

# Lege Messbereich fest
ua = -40;
ue = 50;
u =ua:ue 

#----------------- Erstelle reale Kennlinie

y_real_1 = u; # initilisiert den Vektor

for(i in 1:length(u)){ 
	y_real_1[i] = thermistor(u[i],R1,U_s,A)
}
# axes=F, xlab='', ylab ='' deaktivieren die Achsen und... 
#...Beschriftungen, damit die vorherigen nicht überschrieben werden
plot(u,y_real_1, main='Vergleich der Kennlinien', xlab='Temperatur in °C', ylab ='Spannung in V',ylim=c(0,6), xlim=c(ua,ue));
par(new=TRUE)

#----------------- Erstelle real-reale Kennlinie

y_real_2 = u; # initilisiert den Vektor

for(i in 1:length(u)){ 
	y_real_2[i] = thermistor_real(u[i],R1,U_s,A)
}
# axes=F, xlab='', ylab ='' deaktivieren die Achsen und... 
#...Beschriftungen, damit die vorherigen nicht überschrieben werden
plot(u,y_real_2, axes=F, xlab='', ylab ='',ylim=c(0,10), xlim=c(ua,ue),col='red');
par(new=TRUE)
