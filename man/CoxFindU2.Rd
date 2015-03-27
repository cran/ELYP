\name{CoxFindU2}
\alias{CoxFindU2}
\title{Find the Wilks Confidence Interval Upper Bound for Efun from the Empirical Likelihood Ratio Function CoxEL( ).}
\usage{
CoxFindU2(BetaMLE, StepSize, Hfun, Efun, y, d, Z, level=3.84)
}
\description{
This function uses simple search to find the upper 95\% Wilks confidence limits based on the log likelihood function supplied.
A sister function to CoxFindL2().}
\arguments{
    \item{BetaMLE}{a scalar: the NPMLE beta1 hat.}
    \item{StepSize}{a vector of length 2. Approx. length of the 2 conf. intervals: beta1, and lambda.}
    \item{Hfun}{a function that defines the baseline feature: mu.} 
    \item{Efun}{a function that takes the input of 2 parameter values (beta1, and Mulam) and 
         returns a parameter that we wish to find the confidence Interval Upper Value. }
    \item{y}{a vector of censored survival times. }
    \item{d}{a vector of 0 and 1}
    \item{Z}{covariates for the Cox model}
    \item{level}{Confidence Level. Use chi-square(df=1), but calibration possible.}
}
\value{
    A list with the following components:
    \item{Upper}{the upper confidence bound.}
    \item{maxParameterNloglik}{Final values of the 4 parameters, and  the log likelihood.}
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
## Here Mulam is the value of int g(t) d H(t) = Mulam
## For example g(t) = I[ t <= 2.0 ]; look inside myLLfun(). 

data(GastricCancer)

# The following will take about 0.5 min to run.
# findU3(NPmle=c(1.816674, -1.002082), ConfInt=c(1.2, 0.5, 10),   
#         LogLikfn=myLLfun, Pfun=Pfun, dataMat=GastricCancer)

}
\keyword{nonparametric}
\keyword{htest}

