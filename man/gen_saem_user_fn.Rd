% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saem_fit.R
\name{gen_saem_user_fn}
\alias{gen_saem_user_fn}
\title{Generate an SAEM model}
\usage{
gen_saem_user_fn(model, PKpars = attr(model, "default.pars"), pred = NULL)
}
\arguments{
\item{model}{a compiled SAEM model by gen_saem_user_fn()}

\item{PKpars}{PKpars function}

\item{pred}{pred function}
}
\description{
Generate an SAEM model using either closed-form solutions or ODE-based model definitions
}
\details{
Fit a generalized nonlinear mixed-effect model using the Stochastic
   Approximation Expectation-Maximization (SAEM) algorithm
}
\examples{
\dontrun{
#ode <- "d/dt(depot) =-KA*depot;
#        d/dt(centr) = KA*depot - KE*centr;"
#m1 = RxODE(ode, modName="m1")
#ode <- "C2 = centr/V;
#      d/dt(depot) =-KA*depot;
#      d/dt(centr) = KA*depot - KE*centr;"
#m2 = RxODE(ode, modName="m2")

PKpars = function()
{
  CL = exp(lCL)
  V  = exp(lV)
  KA = exp(lKA)
  KE = CL / V
  #initCondition = c(0, KE - CL/V)
}
PRED = function() centr / V
PRED2 = function() C2

saem_fit <- gen_saem_user_fn(model=lincmt(ncmt=1, oral=T))
#saem_fit <- gen_saem_user_fn(model=m1, PKpars, pred=PRED)
#saem_fit <- gen_saem_user_fn(model=m2, PKpars, pred=PRED2)


#--- saem cfg
nmdat = read.table("theo_sd.dat",  head=T)
model = list(saem_mod=saem_fit, covars="WT")
inits = list(theta=c(.05, .5, 2))
cfg   = configsaem(model, nmdat, inits)
cfg$print = 50

#cfg$Rfn = nlmixr:::Ruser_function_cmt
#dyn.load("m1.d/m1.so");cfg$Rfn = nlmixr:::Ruser_function_ode
fit = saem_fit(cfg)
df = simple.gof(fit)
xyplot(DV~TIME|ID, df, type=c("p","l"), lwd=c(NA,1), pch=c(1,NA), groups=grp)
fit
}
}
\author{
Wenping Wang
}
