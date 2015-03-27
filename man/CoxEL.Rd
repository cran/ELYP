\name{CoxEL}
\alias{CoxEL}
\title{Compute Empirical Likelihood and Partial Likelihood of Cox model for Testing the beta and Baseline jointly. }
\usage{
CoxEL(y, d, Z, beta, lam, fun)
}
\description{
This function compute empirical likelihood and partial likelihood for the purpose of 
testing (jointly) the beta (regression parameter) and the baseline hazard feature, which is defined by lam and fun.
}
\arguments{
    \item{y}{a vector containing the survival times}
    \item{d}{censoring status: 1 - uncensored; 0 - censored.}
    \item{Z}{a matrix of covariates, size nxk; Z=(Z_1i, ..., Z_ki)}
    \item{beta}{ =(beta1, ... betak)}
    \item{lam}{a scalar, used in the constraint of baseline int f(t)dH(t)= Mulam.}
    \item{fun}{a function. Together with lam, it defines the feature of the baseline hazard.}
}
\value{It returns a list containing:
   (1)logEmpLik: log empirical likelihood value; 
   (2)logPlik: log partial likelihood value; 
   (3)Hazw: the constrained baseline estimator (the jumps);
   (4)mu: the value of constraint, i.e. the feature.
}
\details{
Say something.
}
\author{ Mai Zhou }
\references{
    Zhou, M. (2005). 
        Cox model with restriction on the baseline hazard. 
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