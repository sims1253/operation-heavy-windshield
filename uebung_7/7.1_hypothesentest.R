hypothesentest <- function(){

	hist_data = matrix(, nrow=90, ncol=1);

	data <- read.table('C:/Users/m0hawk/Documents/operation-heavy-windshield/uebung_7/aufgabe1.txt');

	for(i in 1:90){
		hist_data[i,1] = data[i,1];
	}

	hist_breaks = c(33.0, 35, 35.1, 35.6, 36.1, 36.6, 37.1, 37.6, 38.0, 39.0);

	hist(hist_data,hist_breaks, freq = TRUE);
	classes = matrix(, nrow=8, ncol=1);

	classes[8,1] = pnorm(38, mean = 36.44, sd = 0.9, lower.tail = FALSE)
	classes[7,1] = pnorm(38, mean = 36.44, sd = 0.9) - pnorm(37.6, mean = 36.44, sd = 0.9)
	classes[6,1] = pnorm(37.6, mean = 36.44, sd = 0.9) - pnorm(37.1, mean = 36.44, sd = 0.9)
	classes[5,1] = pnorm(37.1, mean = 36.44, sd = 0.9) - pnorm(36.6, mean = 36.44, sd = 0.9)
	classes[4,1] = pnorm(36.6, mean = 36.44, sd = 0.9) - pnorm(36.1, mean = 36.44, sd = 0.9)
	classes[3,1] = pnorm(36.1, mean = 36.44, sd = 0.9) - pnorm(35.6, mean = 36.44, sd = 0.9)
	classes[2,1] = pnorm(35.6, mean = 36.44, sd = 0.9) - pnorm(35.1, mean = 36.44, sd = 0.9)
	classes[1,1] = pnorm(35, mean = 36.44, sd = 0.9)

	classes = classes * 90

	classes
}