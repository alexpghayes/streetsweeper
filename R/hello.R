

#' Title
#'
#' @param object
#'
#' @return asdf
#' @importFrom broom tidy
#' @export
#'
use_tidy_method_from_broom <- function(object) {
  broom::tidy(object)
}


#' Title
#'
#' @param object
#'
#' @importFrom broom tidy
#' @import broom.mixed
#' @export
use_tidy_method_from_broom.mixed <- function(object) {
  # broom.mixed::tidy(object)  # doesn't work since broom.mixed doesn't export `tidy()`
  tidy(object)
}
