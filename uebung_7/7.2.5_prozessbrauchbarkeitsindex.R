index_b <- function(){

	source("7.2.2_abweichung.R");
	source("7.2.4_prozessfaehigkeitsindex.R");
	cp = index_f();
	dx = abweichung(temp="a_t");

	xsmax = 3.6;
	xsmin = 3.2;
	dxs = xsmax - xsmin;

	cpk = cp * (1-(dx/dxs));
	
	cat("Prozessbrauchbarkeitsindex:\n");
	return(cpk);

}