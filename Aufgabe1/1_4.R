list=ls()
list
rm(list)
ls()
#man sieht, dass es so nicht funktioniert. 
#Die Liste muss in der rm Funktion erstellt werden
rm(list=ls())
ls()