% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.npdf.R
\name{nelsonaalen_npdf}
\alias{nelsonaalen_npdf}
\title{Nelson-Aalen estimates of group-specific cumulative hazard from a nonparametric discrete frailty model}
\usage{
nelsonaalen_npdf(x)
}
\arguments{
\item{x}{A fitted nonparametric discrete frailty model, as returned by \code{\link{npdf_cox}} with \code{estK=FALSE}.}
}
\value{
A list of objects of length equal to the number of groups in the data.  Each component is a list, equivalent to the output of \code{\link[survival]{survfit}} called for the corresponding group with \code{type="fh"}, but with two additional components:

\code{y0}:  \code{-log} of the survival estimate

\code{sfun0}:  a step function for \code{y0} in terms of time, estimated using \code{\link{stepfun}}.
}
\description{
Nelson-Aalen estimates of group-specific cumulative hazard from a nonparametric discrete frailty model
}
\examples{
x = npdf_cox( Surv(time, status) ~ x, groups=family, data=weibdata2030, K = 2,
               estK=FALSE, eps_conv=10^-4)
object = nelsonaalen_npdf( x )

}
\seealso{
\code{\link{plot.nelsonaalen_npdf}}, \code{\link{plot.npdf}}.
}
