# Aufgabe 1.2 - 1.3 Kennlinie idealsiertes Messinstrument

rm(list=ls());

# setze Arbeitsverzeichnis und lade die eigene Funktion
setwd('E:/Lehre/mdv/2014w/tutorial/tutorial_1');
source("thermistor.R")

# Daten zum Versuchsaufbau
A = 1; # Vorverstärkung
U_s = 10; # Spannungsquelle
R1 = 220*1000; # Widerstand 

# Berechne Empfindlichkeit S
ua = -40;
ue = 50;
ya = thermistor(ua,R1,U_s,A);
ye = thermistor(ue,R1,U_s,A);
S = (ye-ya)/(ue-ua);
S

#----------------------- Erstelle ideale Kennlinie y = mx+b
u = -40:50;
b = ye-S*ue
y_ideal = S*(u)+b

plot(u, y_ideal, main="Vergleich der Kennlinien",ylab = 'Spannung in V', xlab = 'Temperatur in °C', type='l')
par(new=TRUE); # Befehl erlaubt mehrere Graphen übereinander zu legen

#----------------------- Erstelle reale Kennlinie

y_real = -40:50; # initilisiert den Vektor

for(i in 1:length(u)){ 
	y_real[i] = thermistor(u[i],R1,U_s,A)
}


plot(u,y_real, axes=F, xlab='', ylab ='');
# axes=F, xlab='', ylab ='' deaktivieren die Achsen und... 
#...Beschriftungen, damit die vorherigen nicht überschrieben werden
par(new=TRUE)

# Berechnung und Darstellung der Differenz
y_diff = abs(y_real-y_ideal);
plot(u,y_diff, col='red', axes=F, xlab ='', ylab = '' );

