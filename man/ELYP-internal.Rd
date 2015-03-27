\name{ELYP-internal}
\alias{cumsumsurv}
\alias{Haz3}
\alias{Haz4}
\alias{YP3}
\alias{YP4}
\alias{YP41}
\alias{ELcomp}
\alias{rYP}
\alias{myffitYP3}
\alias{myffitYP4}
\alias{myffitYP41}
\alias{myffitYP411}
\alias{myffitYP412}
\title{Internal ELYP functions}
\usage{
cumsumsurv(x)
Haz3(d, S, gam, lam, fvec)
Haz4(d, S, gam)
YP3(y, d, Z, b1, b2, k, lam, fun)
YP4(y, d, Z, b1, b2, k)
YP41(y, d, Z, b1, b2, k)
ELcomp(Haz, Sur, gam)
rYP(th1, th2, n, aX)
myffitYP3(x, myY, myd, myZ)
myffitYP4(x, myY, myd, myZ)
myffitYP41(x, myY, myd, myZ)
myffitYP411(x1, myY, myd, myZ, beta2)
myffitYP412(x2, myY, myd, myZ, beta1)
}
\description{ Internal ELYP functions }
\details{
These are not intended to be called by the user. They compute the baseline hazard function inside a YP model.

\code{cumsumsurv} is a faster version of rev(cumsum(rev(x))).

\code{Haz3} is used in \code{YP3}.

\code{Haz4} is used by \code{fitYP4}.

\code{YP3} is used by \code{fitYP3}.

\code{YP4} is used bu \code{fitYP4}.

\code{YP41} is used by \code{fitYP41}.

\code{ELcomp} is used for computation of the Log Empirical Likelihood value. Used by \code{fitYP3}.

\code{rYP} is used only by simuDataYP.

\code{myffitYP***} are for using the optim( ) function, to find
NPmle etc.

}
\keyword{internal}
