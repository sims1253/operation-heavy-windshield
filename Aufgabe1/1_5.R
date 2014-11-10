getwd()
#Hier Pfad zum Git Rep einfuegen
setwd("C:/Users/m0hawk/Documents/operation-heavy-windshield/Aufgabe1/")
getwd()
test = read.table("test.txt")
test

write.table(test, "test2.txt")