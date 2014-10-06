\name{mvprpb-package}
\alias{mvprpb-package}
\alias{mvprpb}
\docType{package}
\title{mvprpb}
\description{
Evaluation orthant probabilities of non-degenerate multivariate normal distribution
based on orthogonal projections to subspaces.
}
\details{
\tabular{ll}{
Package: \tab mvprpb\cr
Type: \tab Package\cr
Version: \tab 1.0.4\cr
Date: \tab 2014-10-06\cr
License: \tab BSD_3_clause License\cr
}
This program evaluates the probabilites of multivariate distribution
 based on orthogonal projections to subspaces.
}
\author{
Noboru Nomura

Maintainer: Noboru Nomura <n.nomura@aist.go.jp>
}
\references{
Nomura N. (2014). Evaluation of Gaussian orthant probabilities
 based on orthogonal projections to subspaces.
 Statistics and Computing, Online First.
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