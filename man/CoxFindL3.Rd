\name{CoxFindL3}
\alias{CoxFindL3}
\title{Find the Wilks Confidence Interval Upper Bound from the Given Empirical Likelihood Ratio Function}
\usage{
CoxFindL3(BetaMLE, StepSize, Hfun, Efun, y, d, Z, level=3.84)
}
\description{
This program uses simple search to find the Lower 95\% (or other)Wilks confidence limits based on the log likelihood function (CoxEL) supplied.
}
\arguments{
    \item{BetaMLE}{a vector containing the two NPMLEs: beta1 hat and beta2 hat.}
    \item{StepSize}{a vector of length 3. Approximate length of the 3 confidence intervals: beta1, beta2 and lambda.}
    \item{Hfun}{a function that used to defines the baseline feature, mu.} 
    \item{Efun}{a function that takes the input of 3 parameter values (beta1, beta2 and Mulam) and 
         returns a parameter that we wish to find the confidence Interval Lower Value. The input variables must be called beta and theta. beta: in the form of a 2-d vector (i.e., the beta1, beta2) and theta: (=Mulam)}
    \item{y}{a vector of censored survival time.}
    \item{d}{a vector of 0 and 1, censoring indicator}
    \item{Z}{covariates of the Cox model.}
    \item{level}{confidence level}
}
\value{
    A list with the following components:
    \item{Lower}{the lower confidence bound.}
    \item{maxParameterNloglik}{Final values of the 4 parameters, and  the log likelihood.}
}
\details{

Basically we repeatedly testing the value of the parameter (defined by Efun), try to go to lower and lower values of the 
parameter until we find those
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
#         LogLikfn=myLLfun, Pfun=Pfun, dataMat=GastricCancer)

}
\keyword{nonparametric}
\keyword{htest}

