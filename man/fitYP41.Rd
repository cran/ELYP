\name{fitYP41}
\alias{fitYP41}
\title{ Compute the Baseline Hazard for the Given Data, given Parameters beta1, beta2. 
Also, compute the empirical likelihood value. }
\usage{
fitYP41(Y, d, Z, beta1=1, beta2=-1, maxiter=60)
}
\description{
This function finds the NPMLE of baseline, for the given beta1 and beta2, and then compute the empirical likelihood. The model used is the simple YP model, without alpha.
}
\arguments{
    \item{Y}{a vector containing the observed survival times.}
    \item{d}{a vector containing the censoring indicators, 1-uncensored; 0-right censored.}
    \item{Z}{a vector of covariates ...}
    \item{beta1}{a scalar. short term} 
    \item{beta2}{a scalar. long term}
    \item{maxiter}{an integer.}
}
\value{
    A list with the following components (may be I should also return the baseline?):
    \item{EmpLik}{this is actually the log empirical likelihood value.}
    \item{BaselineH}{ The baseline hazard estimate.}
}
\details{

Similar to the function \code{fitYP4} except using a simple YP model (without alpha).

}
\author{ Mai Zhou }
\references{
    Zhou, M. (2002). 
        Computing censored empirical likelihood ratio 
        by EM algorithm. 
    \emph{Tech Report, Univ. of Kentucky, Dept of Statistics}

}
\examples{
## find NPMLE of beta1 and beta2 in the simple YP model.
data(GastricCancer)
optim(par=c(1.5,-1.5), fn= myffitYP41, 
                       myY=GastricCancer[1,], 
					   myd=GastricCancer[2,], 
					   myZ=GastricCancer[4,])
}
\keyword{nonparametric}
\keyword{survival}