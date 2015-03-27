#include <math.h>
#include <R.h>
#include <Rconfig.h>
#include <Rdefines.h>
#include <float.h>

#include <R_ext/Applic.h>

#define EPSILON DBL_EPSILON


void cumsumsurv(double *x, double *s, int *LLL)
{
    double sum = 0.0;
    int LL=LLL[0]-1;
    for (int i = 0; i < LLL[0]; i++) {  
	sum += x[LL-i];
	s[LL-i] = (double) sum;
    }
}
