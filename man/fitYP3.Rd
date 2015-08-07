\name{fitYP3}
\alias{fitYP3}
\title{ Compute Baseline Hazard for the Given Data, Given Parameters: beta1, beta2, lam, and fun. 
Also, Given the Baseline, Compute the empirical likelihood value. }
\usage{
fitYP3(Y, d, Z, beta1, beta2, lam, fun)
}
\description{
This function fits the baseline for given beta1 beta2 and lam; and then compute the empirical likelihood.
}
\arguments{
    \item{Y}{a vector containing the observed survival times.}
    \item{d}{a vector containing the censoring indicators, 1-uncensored; 0-right censored.}
    \item{Z}{a matrix of covariates (Xi and Zi)...}
    \item{beta1}{a vector = (alpha, beta1). } 
    \item{beta2}{a vector = (alpha, beta2). }
    \item{lam}{a scalar. tilting parameter for the baseline. When lam=0, then there is no tilting.}
    \item{fun}{a function. It determine what feature of the baseline lam tilts.}
}
\value{
    A list with the following components:
    \item{LogEmpLik}{this is actually the log empirical likelihood value.}
    \item{Mulam}{ The value of int f(t) d H(t) for corresponding lam. This is also called a baseline feature.}
    \item{BaseHazw}{ The baseline hazard jumps.}
}
\details{

This function computes the log empirical likelihood. The parameters are given: beta1, beta2 and lam. 

What baseline feature the lam corresponds to is determined by the fun(t), as in int f(t) dH(t). This integral value for the lam is also in the output as Mulam.

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
