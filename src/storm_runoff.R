

#' Volume of water from rainfall
#'
#' @param imperv_frac a numeric value that represents the fraction of the watershed that is considered “impervious” (unitless)
#' @param watershed_area a numeric value that represents the watershed area in acres
#'
#' @return
#' @export
#'
#' @examples
predict_runoff <- function(imperv_frac, watershed_area) {
  Rv <- 0.05 + 0.9 * imperv_frac
  V <- 3630 * 1.0 * Rv * watershed_area
  return(V)
}
