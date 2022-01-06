
#' Speed Conversions
#'
#' Convert between different vehicle speed units.
#'
#' @param x Input vector.
#'
#' @author Jack Davison
#'
#' @rdname kmh_to_ms
#' @export
kmh_to_ms <- function(x) x / 3.6

#' @rdname kmh_to_ms
#' @export
ms_to_kmh <- function(x) x * 3.6

#' @rdname kmh_to_ms
#' @export
kmh_to_mph <- function(x) x / 1.609

#' @rdname kmh_to_ms
#' @export
mph_to_kmh <- function(x) x * 1.609

#' @rdname kmh_to_ms
#' @export
mph_to_ms <- function(x) x / 2.237

#' @rdname kmh_to_ms
#' @export
ms_to_mph <- function(x) x * 2.237
