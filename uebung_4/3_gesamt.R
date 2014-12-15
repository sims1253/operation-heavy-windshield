source("3.1_histogram_mittelwert.R");
source("3.2_histogram_variance.R");
source("3.3_variance_mittelwert.R");

cat("You probably need to change the path for messung.txt in multi_stichprobe.R\n")

cat("Press [enter] for 3.1");
readline();
# Aufgabe 3.1:
histogram(100,10);
# Der Mittelwert ist normalverteilt

cat("Press [enter] for 3.2");
readline();
#Aufgabe 3.2:
histogram_variance(100,10);
# Die Varianz ist annähernd exponentiell verteilt.

cat("Press [enter] for 3.3\n");
cat("This might take a while.\n")
readline();
#Aufgabe 3.3:
variance_mittelwert(100,100);
# Wie erwartet besteht bei einer kleinen Stichprobe eine größere Varianz als bei einer großen. 