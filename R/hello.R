

#' Title
#'
#' @param object
#'
#' @return asdf
#' @import broom
#' @export
#'
use_tidy_method_from_broom <- function(object) {
  broom::tidy(object)
}


#' Title
#'
#' @param object
#'
#' @import broom
#' @import broom.mixed
#' @export
use_tidy_method_from_broom.mixed <- function(object) {
  broom.mixed::tidy(object)  # doesn't work since broom.mixed doesn't export `tidy()`
}
