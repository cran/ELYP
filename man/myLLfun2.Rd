\name{myLLfun2}
\alias{myLLfun2}
\title{ Compute Baseline Hazard for the Given Data and Parameters beta1, beta2, alpha, lam. 
Also Compute the empirical likelihood value. }
\usage{
myLLfun2(mle, dataMat, fun)
}
\description{
This function is similar to \code{fitYP3}. Just streamline input and output.
}
\arguments{
    \item{mle}{a vector of length 4, containing the parameter values beta1, beta2, alpha, and lam. They do not have to be MLE.}
    \item{dataMat}{a matrix of 4 by n. They are (Y d X Z).}
    \item{fun}{a function, used in define the int f(t)dH(t)= Mulam.}
}
\value{
    A list with the following components:
    \item{Mulam}{ The value of int f(t) d H(t) for corresponding lam. Notice lam, beta1, beta2 determine the baseline H(t). }
    \item{Loglik}{The log empirical likelihood.}
}
\details{
We assume a Y-P model. 
Say something.
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