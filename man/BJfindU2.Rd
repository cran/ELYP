\name{BJfindU2}
\alias{BJfindU2}
\title{Find the Wilks Confidence Interval Upper Bound for Betafun from the 2 dimensional Buckley-James Empirical Likelihood Ratio Function}
\usage{
BJfindU2(NPmle, ConfInt, LLRfn, Betafun, dataMat, level=3.84)
}
\description{
This function uses simple search to find the upper level (default 95\%) 1 parameter Wilks confidence limits based on the Buckley-James empirical likelihood test function for two dimensional beta's. The confidece interval is for the 1 parameter, determined by Betafun.
}
\arguments{
    \item{NPmle}{a 2-d vector: the NPMLEs: beta1 hat and beta2 hat.}
    \item{ConfInt}{a vector of length 2. Approx. length of the 2 conf. intervals for beta1 and beta2. May use the SD from bj(). }
    \item{LLRfn}{a function that returns the -2LLR.} 
    \item{Betafun}{a function that takes the input of 2 parameter values (beta1, beta2) and 
         returns a parameter that we wish to find its confidence Interval Lower Value. }
    \item{dataMat}{matrix of covariates}
    \item{level}{confidence level.}
}
\value{
    A list with the following components:
    \item{Upper}{the upper confidence bound.}
    \item{maxParameterNloglik}{Final values of the 2 parameters, and the log likelihood.}
}
\details{
Basically we repeatedly testing the value of the 2 parameters, until we find the max of Betafun, provided
the -2 log likelihood value is <= 3.84 (or other level, if set differently).
}
\author{ Mai Zhou }
\references{
    Zhou, M. (2005). 
        Computing censored empirical likelihood ratio 
        by EM algorithm. 
    \emph{JCGS}

}
\examples{ 
# The Stanford Heart Transplant Data: with 152 cases.
# Needs bjtest( ) function from emplik package to run.

## BJloglik <- function(para, dataMat) {
##            yvec <- dataMat[,1]
##            dvec <- dataMat[,2]
##            x <- dataMat[,3:4]
## temp <- bjtest(y=log10(yvec), d=dvec, x=x, beta=para)
## return(temp)
## }

## BJ2fun <- function (b1, b2) {
##    return(b2)
## }

## We first use bj() from Design library to find NPmle and
## the conservative SD of beta1 and beta2

## BJfindU2(NPmle=c(3.52696077,-0.01989555), 
##      ConfInt=c(0.3,0.0066), LLRfn=BJloglik, 
##      Betafun=BJ2fun, 
##      dataMat=cbind(stanford5$time, stanford5$status, 
##      rep(1,152),stanford5$age))
##
# This will take (~ 1 min.) to run.
}
\keyword{nonparametric}
\keyword{htest}