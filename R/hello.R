
#' @title Hello world function
#'
#' @param name The name of the person you want to say hello to
#'
#' @return a character string of 'Hello {name}'
#' @export
#'
#' @examples
#' hellp_function("Jeff")
#'
hello_function <- function(name){

  print(paste("Hello", name))

}
