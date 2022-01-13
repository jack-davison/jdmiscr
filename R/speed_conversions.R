
#' Speed/Distance Conversions
#'
#' Convert between different vehicle speed and distance units.
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

#' @rdname kmh_to_ms
#' @export
km_to_mile <- function(x) x / 1.609

#' @rdname kmh_to_ms
#' @export
mile_to_km <- function(x) x * 1.609
