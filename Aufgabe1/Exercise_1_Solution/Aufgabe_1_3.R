# Aufgabe 1.3

A = 2;
f = 5;

w = 2*pi*f

t = seq(0,1,0.01);

x = A*sin(w*t);

plot(t,x,type="l", main= "Aufgabe 1.3: 5 Hz Sinus", ylab = "Spannung in V", xlab = "Zeit in s");


