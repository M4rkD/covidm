#' @useDynLib covidm, .registration = TRUE
#' @importFrom Rcpp sourceCpp
#' @import data.table
#' @import lubridate
NULL

.onLoad <- function(libname, pkgname) {
  # Data table should be single threaded
  packageStartupMessage("Setting data table to single threaded...")
  setDTthreads(1)
}

.onUnload <- function(libpath) {
  library.dynam.unload("covidm", libpath)
}
