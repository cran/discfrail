% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.npdf.R
\name{plot.npdf}
\alias{plot.npdf}
\title{Survival or cumulative hazard curves from a fitted nonparametric discrete frailty model}
\usage{
\method{plot}{npdf}(x, type = "km", cols = NULL, survfit_opts = NULL, na_opts = NULL, ...)
}
\arguments{
\item{x}{A fitted nonparametric discrete frailty model, as returned by \code{\link{npdf_cox}} with \code{estK=FALSE}.}

\item{type}{character. If \code{"km"} group-specific Kaplan-Meier estimates of survival are plotted.   If \code{"na"} group-specific Nelson-Aalen estimates of the cumulative hazard are plotted.  The default is \code{"km"}.}

\item{cols}{Vector of colour names or numbers, of the same length as the number of groups.  If not given, this defaults to \code{x$belonging}.}

\item{survfit_opts}{Optional list of additional arguments to pass to \code{\link[survival]{survfit.formula}}.}

\item{na_opts}{Optional list of arguments (other than \code{"cols"}) to pass to \code{\link{plot.nelsonaalen_npdf}}.}

\item{...}{Optional arguments to pass to \code{\link[survival]{plot.survfit}}.}
}
\description{
This function plots estimates of the survival or cumulative hazard for each group, coloured according to the latent population that each group belongs to.
}
\examples{

result = npdf_cox( Surv(time, status) ~ x, groups = family, data = weibdata2030,
                    K = 2, estK = FALSE, eps_conv=10^-4)
plot( result )
plot( result, type = "km" )
plot( result, cols = ifelse( result$belonging == 1, "purple", "black" ), xlim = c( 0, 150 ) )

## use of survfit_opts.  show only first 10 groups
plot( result, survfit_opts = list(subset = (weibdata2030$family >= 10) ))

plot( result, type = "na" )

## use of na_opts to customise the Nelson-Aalen plot
plot( result, type = "na", cols=ifelse(result$belonging==2, "purple", "black"),
     na_opts = list(xlim=c(0,200), ylim=c(0,2),
                    xlab="Follow-up days",
                    ylab="Nelson-Aalen estimate"))

}
\seealso{
\code{\link[survival]{survfit.formula}} \code{\link[survival]{plot.survfit}}
}
