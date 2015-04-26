\name{CoxFindL2}
\alias{CoxFindL2}
\title{Find the Wilks Confidence Interval Lower Bound for Efun from the Empirical Likelihood Ratio Function CoxEL}
\usage{
CoxFindL2(BetaMLE, StepSize, Hfun, Efun, y, d, Z, level=3.84)
}
\description{
This function uses simple search to find the lower level (default 95\%) Wilks confidence limits based on the CoxEL( ) likelihood function.
}
\arguments{
    \item{BetaMLE}{a scalar: the NPMLEs: beta1 hat.}
    \item{StepSize}{a vector of length 2. Approx. length of the 2 conf. intervals: beta1, and lambda.}
    \item{Hfun}{a function that defines the baseline feature: mu or sometimes called Mulam.} 
    \item{Efun}{a function that takes the input of 2 parameter values (beta1 and Mulam) and 
         returns a parameter that we wish to find the confidence interval lower value. The two input variables must be named beta and theta.}
    \item{y}{the censored survival times. }
    \item{d}{vector of 0, and 1}
    \item{Z}{matrix of covariates}
    \item{level}{confidence level. Using chi-square(df=1), but calibration possible.}
}
\value{
    A list with the following components:
    \item{Lower}{the lower confidence bound.}
    \item{maxParameterNloglik}{Final values of the 3 parameters, and the log likelihood.}
}
\details{

Basically we repeatedly testing the value of the parameter, until we find those
which the -2 log likelihood value is equal to 3.84 (or other level, if set differently).

}
\author{ Mai Zhou }
\references{
    Zhou, M. (2002). 
        Computing censored empirical likelihood ratio 
        by EM algorithm. 
    \emph{JCGS}

}
\examples{
## We find 95% lower limit of theta= \Lambda_0(300) exp(\beta)
## where \Lambda and \beta are inside a Cox model.
## First we define a function (Hfun) = I[t <= 300], so that
## the baseline feature is \Lambda_0(300). The second function
## we need to define is (Efun) = what we called theta above.

data(smallcell)
myHfun <- function(t){as.numeric(t <= 300)}
myEfun <- function(beta, theta){theta*exp(beta)}

myy <- smallcell$survival
myd <- smallcell$indicator
myZ <- smallcell$arm

CoxFindL2(BetaMLE=0.5337653, StepSize=c(0.1, 3), 
          Hfun=myHfun, Efun=myEfun, y=myy, d=myd, Z=myZ)
}
\keyword{nonparametric}
\keyword{htest}

