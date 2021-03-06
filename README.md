[![Build Status](https://travis-ci.org/mattfidler/nlmixr.svg?branch=master)](https://travis-ci.org/mattfidler/nlmixr)
[![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/mattfidler/nlmixr?branch=master&svg=true)](https://ci.appveyor.com/project/mattfidler/nlmixr)
[![codecov.io](https://codecov.io/github/mattfidler/nlmixr/coverage.svg?branch=master)](https://codecov.io/github/mattfidler/nlmixr?branch=master)
[![CRAN version](http://www.r-pkg.org/badges/version/nlmixr)](https://cran.r-project.org/package=nlmixr)

![alt tag](https://github.com/nlmixrdevelopment/nlmixr/blob/master/logo.png)

# nlmixr: an R package for population PKPD modeling
***

#####Authors: Yuan Xiong, Rik Schoemaker, Justin Wilkins, Matthew Fidler, Wenping Wang

***

`nlmixr` is an R package for fitting general dynamic models,
pharmacokinetic (PK) models and pharmacokinetic-pharmacodynamic (PKPD)
models in particular, with either individual data or population
data. `nlmixr` has five main modules: 1) `dynmodel()` and its mcmc
cousin `dynmodel.mcmc()` for nonlinear dynamic models of individual
data; 2) `nlme_lin_cmpt()`for one to three linear compartment models
of population data with first order absorption, or i.v. bolus, or
i.v. infusion using the nlme algorithm; 3) `nlme_ode()` for general
dynamic models defined by ordinary differential equations (ODEs) of
population data using the nlme algorithm; 4) `saem_fit` for general
dynamic models defined by ordinary differential equations (ODEs) of
population data by the Stochastic Approximation
Expectation-Maximization (SAEM) algorithm; 5) `gnlmm` for generalized
non-linear mixed-models (possibly defined by ordinary differential
equations) of population data by the adaptive Gaussian quadrature
algorithm.

A few utilities to facilitate population model building are also included in `nlmixr`.

For a brief Windows/OS X installation guide, please see:
https://github.com/nlmixrdevelopment/nlmixr/blob/master/inst/Installing_nlmixr.pdf
or
https://github.com/nlmixrdevelopment/nlmixr/blob/master/inst/Installing_nlmixr.rtf

For a brief vignette, please see:




The examples in the vignette can be run using VignetteDemo.R and the
associated data files available at:
https://github.com/nlmixrdevelopment/nlmixr/tree/master/vignettes

For PKPD modeling (with ODE and dosing history) with Stan, check out
Yuan's package PMXStan: https://github.com/yxiong1/pmxstan
