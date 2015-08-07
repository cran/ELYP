\name{findL4}
\alias{findL4}
\title{Find the Wilks Confidence Interval Lower Bound from the Given Empirical Likelihood Ratio Function}
\usage{
findL4(NPmle, ConfInt, LogLikfn2, Pfun, dataMat, level=3.84)
}
\description{
This program uses simple search to find the upper 95\% Wilks confidence limits based on the log likelihood function supplied.
Caution: it takes about 1 min. to run on a data set of 90 obs. [GastricCancer]
}
\arguments{
    \item{NPmle}{a vector containing the three NPMLEs: beta1 hat, beta2 hat and alpha hat. from a Y-P model.}
    \item{ConfInt}{a vector of length 4. Approx. length of the 4 conf. intervals: beta1, beta2, alpha and lambda.}
    \item{LogLikfn2}{a function that compute the empirical likelihood of the Y-P model. given the parameters beta1, beta2, alpha, and lam.} 
    \item{Pfun}{a function that takes the input of 3 parameter values (beta1,beta2 and Mulam) and 
         returns a parameter that we wish to find the confidence Interval Lower Value. }
    \item{dataMat}{a matrix. }
    \item{level}{The significance level. Default to 3.84; corresponds to a 95 percent confidence interval.}
}
\value{
    A list with the following components:
    \item{Lower}{the lower confidence bound.}
    \item{minParameterNloglik}{Final values of the 4 parameters, and the log likelihood.}
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
#           LogLikfn=myLLfun, Pfun=Pfun, dataMat=GastricCancer)

}
\keyword{nonparametric}
\keyword{htest}