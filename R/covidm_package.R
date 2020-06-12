#' @useDynLib covidm, .registration = TRUE
#' @importFrom Rcpp sourceCpp
#' @import data.table
#' @import lubridate
NULL

.onUnload <- function (libpath) {
  library.dynam.unload("covidm", libpath)
}
