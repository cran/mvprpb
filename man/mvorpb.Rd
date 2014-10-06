\name{mvorpb}
\alias{mvorpb}
\title{
Depends: R(>= 3.0.3)
}
\description{
Orthant Probability of the Multivariate Normal Distribution
}
\usage{
mvorpb( dim.p , m.tgt , v.tgt , n.itr , it.rg )
}
\arguments{
  \item{dim.p}{
Dimension to evaluate (Integer, Scalar)
}
  \item{m.tgt}{
Mean vector(Real vector, length: dim.p).
}
  \item{v.tgt}{
Covariance Matrix (Real square matrix of size dim.p).
}
  \item{n.itr}{
Number of intervals for numerical integration.
Too small n.itr increases the error of the returned value,
but too large n.itr requires large memory size as well as computation time.
}
  \item{it.rg}{
Maximum point of the numerical integration range.
Too small it.rg increases the error of the returned value due tu integration range.
Estimated upper bound of caused by finiteness of it.rg will be given by the attribute with returned value.
On the other hand, too large it.rg also increases the error because widths between grid points in numerical integration is inverse proportional to it.rg, and it.rg should be set with the consideration of balance it.rg and n.itr.

}
}
\details{
This program evaluates the orthant probability of multivariate normal distribution
 based on orthogonal projections to subspaces.  The covariance matrix is assumed
 to be nonsingular.  The implemented procedure is described in Nomura (2014).
 The value is evaluated through applying numerical integration iteratatively.
 The number of the intervals for numerical integration is given by n.itr and
 grid points are placed equidistantly between zero and it.rg in the transformed space.
}
\value{
The evaluated orthant probability is returned with attributes
\item{error-itg-rg}{Estimated upper bound of error caused by finiteness of the interval of the integration}.
}
\references{
Nomura N. (2014). Evaluation of Gaussian orthant probabilities
 based on orthogonal projections to subspaces.
 Statistics and Computing, Online First.
}
\author{
Noboru Nomura
}
\examples{
dim.p <- 8
mu   <- c( rep(- 0.5   , dim.p -1) , 3 )
cov  <-  diag( dim.p )  * 0.5 + 0.5
n.itr <- 800
integ.range <- 10
res.val <-  mvorpb( dim.p , mu , cov  ,n.itr , integ.range )
print(res.val)
}
\keyword{ Orthant Probability }



