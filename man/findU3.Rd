\name{findU3}
\alias{findU3}
\title{Find the Wilks Confidence Interval Upper Bound from the Given Empirical Likelihood Ratio Function}
\usage{
findU3(NPmle, ConfInt, LogLikfn, Pfun, level=3.84, dataMat)
}
\description{
This program uses simple search to find the upper 95\% Wilks confidence limits based on the log likelihood function supplied.
}
\arguments{
    \item{NPmle}{a vector containing the two NPMLEs: beta1 hat and beta2 hat.}
    \item{ConfInt}{a vector of length 3. Approx. length of the 3 conf. intervals: beta1, beta2 and lambda.}
    \item{LogLikfn}{a function that ...} 
    \item{Pfun}{a function that takes the input of 3 parameter values (beta1,beta2 and Mulam) and 
         returns a parameter that we wish to find the confidence Interval Upper Value. }
    \item{level}{confidence level, default to 3.84 for 95 percent.}
    \item{dataMat}{a matrix. }
}
\value{
    A list with the following components:
    \item{Upper}{the upper confidence bound.}
    \item{maxParameterNloglik}{Final values of the 4 parameters, and  the log likelihood.}
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
## Here Mulam is the value of int g(t) d H(t) = Mulam
## For example g(t) = I[ t <= 2.0 ]; look inside myLLfun(). 

data(GastricCancer)

# The following will take about 0.5 min to run.
# findU3(NPmle=c(1.816674, -1.002082), ConfInt=c(1.2, 0.5, 10),   
#          LogLikfn=myLLfun, Pfun=Pfun, dataMat=GastricCancer)

}
\keyword{nonparametric}
\keyword{htest}

