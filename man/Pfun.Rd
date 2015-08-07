\name{Pfun}
\alias{Pfun}
\title{ The Hazard Ratio in YP Model as a Function of beta1 beta2 and Mulam. }
\usage{
Pfun(b1, b2, Mulam)
}
\description{
This function compute the hazard ratio, given beta1 beta2 and Mulam = int g(t) dH(t) .
}
\arguments{
    \item{b1}{a scalar, the parameter value.}
    \item{b2}{a scalar, parameter.}
    \item{Mulam}{ It is int f(t)dH(t)= Mulam.}
}
\value{
    A scalar which is the hazard ratio.
}
\details{
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