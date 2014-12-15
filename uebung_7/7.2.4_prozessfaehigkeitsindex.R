index_f <- function(){

	source("7.2.2_abweichung.R");
	s_a_tmp = abweichung(temp="s_a");
	s_a = 6 * s_a_tmp;

	xsmax = 3.6;
	xsmin = 3.2;

	cp = (xsmax - xsmin)/s_a;

	cat("Prozessfähigkeitsindex:\n");
	return(cp);

}