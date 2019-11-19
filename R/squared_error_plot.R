#' @title Squared error plot
#'
#' @param reference The reference values to compare against
#' @param calculated The calculated values to be comparared against reference.
#' @param title The title for you plot.  Default
#'
#' @return A ggplot object (list)
#' @export
#'
#' @examples
#'
#' reference <- rnorm(100, 30, 5)
#' calculated <- reference + rnorm(100, 0, 5)
#'
#' squared_error_plot(reference, calculated)
#' @import Cairo
#' @import ggplot2
squared_error_plot <- function(reference, calculated, title = "Squared error plot") {

  errs <- squared_error(reference, calculated)

  plot <- ggplot(data.frame(reference, calculated, errs), aes(y = reference, x = errs)) +
                 geom_point(fill="goldenrod", col=1, alpha=0.5, size=2, shape=21)+
                 geom_smooth(col="red", method="loess")+
                 scale_y_continuous(name="Reference Values")+
                 scale_x_continuous(name = "Squared-error")+
                 labs(title = title) +
                 theme_classic()+
                 theme(plot.title = element_text())

  return(plot)


}
