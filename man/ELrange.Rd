\name{ELrange}
\alias{ELrange}
\title{Find the Ractangular parameter region where EL is Only 4 below the Maximum Value. }
\usage{
ELrange(mle, loglik, step, DataMat)
}
\description{
This function compute the hazard ratio, given beta1 beta2 a X and Mulam = int g(t) dH(t).
}
\arguments{
    \item{mle}{The (NP)MLE of the parameters value. }
    \item{loglik}{a function. Takes 2 inputs: mle amd DataMat. output one scala = loglik value.}
    \item{step}{a vector, same length as mle. The initial step.}
    \item{DataMat}{The data matrix, to be used by loglik( ).}
}
\value{
    A list with Step [a vector] and TempV [a matrix]
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