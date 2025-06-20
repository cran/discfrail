% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.npdf.R
\name{plot.nelsonaalen_npdf}
\alias{plot.nelsonaalen_npdf}
\title{Plot Nelson-Aalen estimates of group-specific cumulative hazard from a nonparametric discrete frailty model}
\usage{
\method{plot}{nelsonaalen_npdf}(x, xlim = NULL, ylim = NULL, xlab = NULL, ylab = NULL, cols = NULL, ...)
}
\arguments{
\item{x}{Object returned by \code{\link{nelsonaalen_npdf}} representing Nelson-Aalen estimates from a nonparametric discrete frailty model}

\item{xlim}{x-axis limits (vector of 2)}

\item{ylim}{x-axis limits (vector of 2)}

\item{xlab}{x-axis label}

\item{ylab}{y-axis label}

\item{cols}{vector of colour names or numbers, of the same length as the number of groups}

\item{...}{options to pass to the generic \code{plot} function}
}
\description{
Plot Nelson-Aalen estimates of group-specific cumulative hazard from a nonparametric discrete frailty model
}
\examples{

 x = npdf_cox( Surv(time, status) ~ x, groups=family, data=weibdata2030, K = 2,
                estK=FALSE, eps_conv=10^-4)
object = nelsonaalen_npdf( x )
plot( object )
plot( object, xlim=c(0,200), ylim=c(0,2),
     xlab="Follow-up days", ylab="Nelson-Aalen estimate",
     cols=ifelse(x$belonging==2, "purple", "black"))

}
\seealso{
\code{\link{nelsonaalen_npdf}}
}
