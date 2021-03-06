% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sim_weibdf.R
\name{sim_weibdf}
\alias{sim_weibdf}
\title{Simulation of grouped time-to-event data with Weibull baseline hazard and discrete shared frailty distribution}
\usage{
sim_weibdf(J, N = NULL, lambda, rho, beta, p, w_values, cens_perc)
}
\arguments{
\item{J}{number of groups in the data}

\item{N}{number of individuals in each group}

\item{lambda}{Weibull baseline rate parameter (see below), interpreted as the rate parameter with covariate values of 0 and frailty ratio 1.  For \eqn{rho=1} this is the baseline hazard.}

\item{rho}{Weibull shape parameter (see below)}

\item{beta}{covariate effects in the Weibull distribution, interpreted as log hazard ratios (see below)}

\item{p}{vector of K elements.  The kth element gives the proportion of groups in the kth latent population of groups.}

\item{w_values}{vector of K distinct frailty values, one for each latent population.}

\item{cens_perc}{cens_perc percentage of censored events. Censoring times are assumed to be distributed as a Normal with variance equal to 1.}
}
\value{
A data frame with one row for each simulated individual, and the following columns:

\code{family}: the group which the individual is in (integers 1, 2, ...)

\code{time}: the simulated event time.

\code{status}: the simulated survival status. Censoring times are generated from a Normal distribution with standard deviation equal to 1 and the mean is estimated in order to guarantee the determined percentage of censored events. The event time is observed (status=1) if it is less than the censoring time, and censored otherwise (status=0).

\code{x}: matrix of covariate values, generated from a standard normal distribution.

\code{belong}:  the frailty hazard ratio corresponding to the cluster of groups in which the individual's group has been allocated.
}
\description{
This function returns a dataset generated from a Weibull proportional hazards model with a shared discrete frailty term, for given Weibull parameters, hazard ratios, distribution of groups among latent populations, frailty values for each latent population, and randomly-generated covariate values.
}
\details{
The "proportional hazards" parameterisation of the Weibull distribution is used, with survivor function \eqn{S(t) = exp(-\lambda t^{\rho} w exp(x^T {\beta}) )}. Note this is different from the "accelerated failure time" parameterisation used in, e.g. \code{\link{dweibull}}.  Distribution functions for the proportional hazards parameterisation can be found in the \pkg{flexsurv} package.
}
\examples{
J <- 100
N <- 40
lambda <- 0.5
beta <- 1.6
rho <- 1
p <- c( 0.8, 0.2 )
w_values <- c( 0.8, 1.6 )
cens_perc <- 0.2
data <- sim_weibdf( J, N, lambda, rho, beta, p, w_values, cens_perc)
head( data )

}
\references{
Wan, F. (2017). Simulating survival data with predefined censoring rates for proportional hazards models. \emph{Statistics in medicine}, 36(5), 838-854.
}
