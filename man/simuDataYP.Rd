\name{simuDataYP}
\alias{simuDataYP}
\title{ Generate random times that follow the YP model with the Given Parameters th1, th2, and alphaX. }
\usage{
simuDataYP(n1, n2, th1, th2, cens, alphaX)
}
\description{
This function is for simulations. It generate data with given/known parameters and may be used later to see
how well some estimation procedure works on them. th1 = exp(beta1), th2 = exp(beta2), alphaX = a^T X.
There is always a covariate Z that indicate the two samples, and the hazards of the two treatments follows
YP model. The baseline hazard of sample one (where Z=0) is taken to be exponential.
}
\arguments{
    \item{n1}{sample size of first arm.}
	\item{n2}{sample size of second arm.}
    \item{th1}{the parameter of th1=exp(beta1). Short term.}
	\item{th2}{the parameter of th2=exp(beta2). Long term. }
    \item{cens}{logical, Either TRUE or FALSE.}
	\item{alphaX}{a vector of length n1+n2. It is the inner product of alpha and covariates X....the part that is proportional hazard. 
	This way, alpha can be p dimensional, However alpha times X is always a vector of length n1+n2.}
}
\value{
    A list with the following components:
    \item{Y}{ The survival times, possibly right censored. }
    \item{d}{The censoring status.}
	\item{Zmat}{the covariates used in generating random times.}
}
\details{
The hazard of the generated survival times, Y, have hazard function that is proportional to exp( alphaX ).

The hazard of arm 1 is constant, just exp( alphaX ).
The hazard of arm 2 is given as
     exp(alphaX) / [ 1/th1 S_0(t) +  1/th2 F_0(t) ]

where S_0 and F_0 are survival function and CDF of a standard exponential random variable. 
}
\author{ Mai Zhou }
\references{
    Yang and Prientice. (2005). 
    \emph{Biometrika}
}
\examples{
## generate data and covariates.
X <- -99:100/50        ## the covariate for alpha, 200 long
temp <- simuDataYP(n1=100, n2=100, th1=exp(1), th2=exp(-1), cens=TRUE, alphaX = -0.5*X)
## this generate a sample of censored data with n=200. beta1=1, beta2=-1, alpha= -0.5.
## and the design matrix or covariance matrix is 
Zmat <- cbind(X, temp$Zmat)
}
\keyword{nonparametric}
\keyword{survival}