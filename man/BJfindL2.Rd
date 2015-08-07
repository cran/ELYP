\name{BJfindL2}
\alias{BJfindL2}
\title{Find the Wilks Confidence Interval Lower Bound for Betafun from the 2 dimensional Buckley-James Empirical Likelihood Ratio Function}
\usage{
BJfindL2(NPmle, ConfInt, LLRfn, Betafun, dataMat, level=3.84)
}
\description{
This function uses simple search to find the lower level (default 95\%) 1 parameter Wilks confidence limits based on the Buckley-James empirical likelihood test function for two dimensional beta's. Betafun determines the 1 parameter we are finding the lower bound.
}
\arguments{
    \item{NPmle}{a 2-d vector: the NPMLEs: beta1 hat and beta2 hat.}
    \item{ConfInt}{a vector of length 2. Approx. length of the 2 conf. intervals for beta1 and beta2.}
    \item{LLRfn}{a function that returns -2LLR value.} 
    \item{Betafun}{a function that takes the input of 2 parameter values (beta1,beta2) and 
         returns a parameter that we wish to find the confidence Interval lower Value. }
    \item{dataMat}{matrix of covariates}
    \item{level}{confidence level. Use chi-square(df=1), but calibration possible.}
}
\value{
    A list with the following components:
    \item{Lower}{the lower confidence bound.}
    \item{minParameterNloglik}{Final values of the 2 parameters, and the log likelihood.}
}
\details{
Basically we repeatedly testing the value of the 2 parameters, finding the -2LLR values, until we find those Betafun
which the -2 log likelihood Ratio value is equal to 3.84 (or other level, if set differently).
}
\author{ Mai Zhou }
\references{
    Zhou, M. and Li, G. (2006). 
        Computing censored empirical likelihood ratio 
        by EM algorithm. 
    \emph{JCGS}

}
\examples{
## See the Rd file of BJfindU2 for example.
}
\keyword{nonparametric}
\keyword{htest}