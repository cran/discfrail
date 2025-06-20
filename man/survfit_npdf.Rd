% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.npdf.R
\name{survfit_npdf}
\alias{survfit_npdf}
\title{Kaplan-Meier estimates of group-specific cumulative hazard from a nonparametric discrete frailty model}
\usage{
survfit_npdf(x, survfit_opts = NULL)
}
\arguments{
\item{x}{A fitted nonparametric discrete frailty model, as returned by \code{\link{npdf_cox}} with \code{estK=FALSE}.}

\item{survfit_opts}{Optional list of additional arguments to pass to \code{\link[survival]{survfit.formula}}.}
}
\value{
A list of survival estimates, one for each group, as produced by \code{\link[survival]{survfit.formula}}
}
\description{
Kaplan-Meier estimates of group-specific cumulative hazard from a nonparametric discrete frailty model
}
\seealso{
\code{\link{plot.npdf}}, \code{\link{plot.survfit_npdf}}, \code{\link[survival]{survfit.formula}}
}
