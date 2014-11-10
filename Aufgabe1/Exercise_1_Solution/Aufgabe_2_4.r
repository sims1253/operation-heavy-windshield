# Aufgabe 1.2 - 1.3 Kennlinie idealsiertes Messinstrument

rm(list=ls());

# setze Arbeitsverzeichnis und lade die eigene Funktion
setwd('E:/Lehre/mdv/2014w/tutorial/tutorial_1/');
source("thermistor.R")

# Daten zum Versuchsaufbau
A = 1;
U_s = 10;
R1 = 220*1000;

# Berechne Empfindlichkeit S
ua = 20;
ue = 30;
ya = thermistor(ua,R1,U_s,A);
ye = thermistor(ue,R1,U_s,A);
S = (ye-ya)/(ue-ua);
S

#---------------------Erstelle ideale Kennlinie y = mx+b
u = ua:ue;
b = ye-S*ue
y_ideal = S*(u)+b;

y_lim = c(0.3,0.6); # legt den Darstellungsbereich fest.

plot(u, y_ideal, main="Vergleich der Kennlinien",ylab = 'Spannung in V', xlab = 'Temperatur in °C', type='l',ylim=y_lim, xlim=c(ua,ue))
par(new=TRUE); # Befehl erlaubt mehrere Graphen übereinander zu legen

#-------------------- Erstelle reale Kennlinie

y_real = u; # initilisiert den Vektor

for(i in 1:length(u)){ 
	y_real[i] = thermistor(u[i],R1,U_s,A)
}
# axes=F, xlab='', ylab ='' deaktivieren die Achsen und... 
#...Beschriftungen, damit die vorherigen nicht überschrieben werden
plot(u,y_real, axes=F, xlab='', ylab ='',ylim=y_lim, xlim=c(ua,ue));
par(new=TRUE)

#------------------ Toleranzbandjustierung

# Berechnung der Differenz
y_diff = abs(y_real - y_ideal);

# suche die maximale Differenz
ind_max = which.max(y_diff);
offset = y_diff[ind_max];
# ziehe die hälfte des maximalen Differenz ab
y_tol = y_ideal-offset/2;

plot(u , y_tol, col='green', axes=F, xlab ='', ylab = '',ylim=y_lim, xlim=c(20,30),type='l' );



