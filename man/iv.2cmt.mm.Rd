% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/acop7-data.R
\docType{data}
\name{iv.2cmt.mm}
\alias{iv.2cmt.mm}
\title{IV infusion 2 compartment model with Michelis-Menton elimination}
\format{An object of class \code{data.frame} with 8880 rows and 16 columns.}
\source{
AcOP7 nlmixr poster
}
\usage{
iv.2cmt.mm
}
\description{
This is a simulated dataset from Schoemaker2016 for comparing
nlmixr to NONMEM.
}
\details{
\describe{
  \item{ID}{Siumlated Subject ID}
  \item{Time}{Simulated Time}
  \item{DV}{Simulated Objective Function}
  \item{LNDV}{Log(DV)}
  \item{MDV}{Missing DV parameter}
  \item{EVID}{Event ID, transformed for nlmixr instead of NONMEM}
  \item{DOSE}{Dose}
  \item{CMT}{Compartment}
}
}
\keyword{datasets}
