\name{findU2d}
\alias{findU2d}
\title{Find the Wilks Confidence Interval Upper Bound from the Given 2-d Empirical Likelihood Ratio Function}
\usage{
findU2d(NPmle, ConfInt, LogLikfn, Pfun, dataMat, level=3.84)
}
\description{
This program uses simple search algorithm to find the upper 95\% Wilks confidence
limits based on the log likelihood function supplied. The likelihood have two parameters beta1, beta2 and
the the confidence interval is for beta1.
}
\arguments{
   \item{NPmle}{a vector containing the two NPMLE: beta1 hat and beta2 hat.}
   \item{ConfInt}{a vector of length 2. These are APPROXIMATE length of confidence intervals, as initial guess.}
   \item{LogLikfn}{a function that ...} 
   \item{Pfun}{A function of 2 variables: NPmle[1]+NPmle[2]. Must be able to take vector input. Example: Pfun(x1, x2)= x1. }
   \item{dataMat}{a matrix of data. for the function LogLikfn.}
   \item{level}{Confidence level. Default to 3.84 (95 percent).}
}
\value{
    A list with the following components:
    \item{Upper}{the upper confidence bound.}
    \item{maxParameterNloglik}{Final values of the 2 parameters, and the log likelihood.}
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
## example with tied observations
x <- c(1, 1.5, 2, 3, 4, 5, 6, 5, 4, 1, 2, 4.5)
d <- c(1,   1, 0, 1, 0, 1, 1, 1, 1, 0, 0,   1)
}
\keyword{nonparametric}
\keyword{htest}
