#include <math.h>
#include <R.h>
#include <Rconfig.h>
#include <Rdefines.h>
#include <float.h>

#include <R_ext/Applic.h>
#include <R_ext/Rdynload.h>
#include <R_ext/Visibility.h>
#include "foo.h"

static R_NativePrimitiveArgType cumsumsurv_t[] = {
      REALSXP, REALSXP, INTSXP
};

static const R_CMethodDef cMethods[] = {
	{"cumsumsurv", (DL_FUNC) &cumsumsurv, 3, cumsumsurv_t},
	{NULL, NULL, 0, NULL}
};


void R_init_myRoutines(DllInfo *info)
{
    R_registerRoutines(info, cMethods, NULL, NULL, NULL);
    R_useDynamicSymbols(info, TRUE);
}
