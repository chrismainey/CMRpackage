#' @title Squared-error function
#'
#' @description This is a squared-error function for us to learn the basics of
#'   package building.
#'
#' @param reference vector of the original values
#' @param calculated vector of the values we want to compare
#'
#' @return Returns the sum of the squared pair-wise differences between vectors
#'
#' @details This function is vectorised to give us a helpful example.  Here is
#'   some text about it to include in the function help.
#'
#' @export
#'
#' @examples
#' reference <- c( 12, 15, 25, 31)
#' calculated <- c( 10, 17, 26, 30)
#'
#' squared_error(reference, calculated)
squared_error <- function(reference, calculated) {

  if (missing(reference)) {
    stop("Need to supply a reference value / vector of values")
  }
  if (missing(calculated)) {
    stop("Need to supply a calcualted value / vector of values")
  }


  err <- ((reference - calculated) ^2)

  return(err)

}
