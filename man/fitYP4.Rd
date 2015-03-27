\name{fitYP4}
\alias{fitYP4}
\title{ Compute Alpha and Baseline Hazard for the Given Data, Given Parameters beta1, beta2. 
Also, compute the empirical likelihood value. }
\usage{
fitYP4(Y, d, Z, beta1=1, beta2=-1, maxiter=60)
}
\description{
This function finds the NPMLE of alpha and baseline, for the given beta1 and beta2. and then compute the empirical likelihood.
}
\arguments{
    \item{Y}{a vector containing the observed survival times.}
    \item{d}{a vector containing the censoring indicators, 1-uncensored; 0-right censored.}
    \item{Z}{a vector of ...}
    \item{beta1}{a scalar. } 
    \item{beta2}{a scalar. }
    \item{maxiter}{an integer.}
}
\value{
    A list with the following components (may be I should also return the baseline Surv?):
    \item{EmpLik}{this is actually the log empirical likelihood value.}
    \item{BaselineH}{ The baseline hazard estimate.}
    \item{alpha}{ The regression coefficient estimate, that is proportional hazard.}
}
\details{

Difference to the function \code{fitYP3}: there is no constraint on the baseline. So, there is no lam input.

On the other hand, it try to find the NPMLE of alpha, via cox model iteration. So, it will output alpha hat. 

}
\author{ Mai Zhou }
\references{
    Zhou, M. (2002). 
        Computing censored empirical likelihood ratio 
        by EM algorithm. 
    \emph{Tech Report, Univ. of Kentucky, Dept of Statistics}

}
\examples{
## censored regression with one right censored observation.
## we check the estimation equation, with the MLE inside myfun7. 
y <- c(3, 5.3, 6.4, 9.1, 14.1, 15.4, 18.1, 15.3, 14, 5.8, 7.3, 14.4)
x <- c(1, 1.5, 2,   3,   4,    5,    6,    5,    4,  1,   2,   4.5)
d <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0)
}
\keyword{nonparametric}
\keyword{survival}
