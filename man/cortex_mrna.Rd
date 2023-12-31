% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{cortex_mrna}
\alias{cortex_mrna}
\title{cortex_mrna}
\usage{
cortex_mrna(localHub = FALSE)
}
\arguments{
\item{localHub}{If working offline, add argument localHub=TRUE to work
with a local, non-updated hub; It will only have resources available that
have previously been downloaded. If offline, Please also see BiocManager
vignette section on offline use to ensure proper functionality.}
}
\value{
cortex_mrna dataset
}
\description{
\code{cortex_mrna} returns the cortex_mrna dataset
}
\examples{
cortex_mrna()
}
