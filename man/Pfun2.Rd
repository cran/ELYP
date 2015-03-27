\name{Pfun2}
\alias{Pfun2}
\title{The Hazard Ratio in YP Model as a Function of beta1, beta2, a, X, and Mulam. }
\usage{
Pfun2(b1, b2, a, X, Mulam)
}
\description{
This function compute the hazard ratio, given beta1 beta2 a X and Mulam = int g(t) dH(t).
}
\arguments{
    \item{b1}{parameter value. = short term hazard ratio}
    \item{b2}{parameter: long term hazard ratio.}
    \item{a}{parameter}
    \item{X}{covariate}
    \item{Mulam}{ it is int f(t)dH(t)= Mulam.}
}
\value{
    A scalar which is the hazard ratio.
}
\details{

The flexibility also rest on the definition of Mulam: it can
using any f(t) function. If we use indicator I[ t <= t0 ] then
Mulam is just the baseline cumulative hazard funtion at t0. Where do you define the Mulam?

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