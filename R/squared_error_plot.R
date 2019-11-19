#' @title Squared error plot
#'
#' @param reference The reference values to compare against
#' @param calcualted The calculated values to be comparared against reference.
#' @param title The title for you plot.  Default
#'
#' @return A ggplot object (list)
#' @export
#'
#' @examples
#'
#' reference <- c( 12, 15, 25, 31)
#' calculated <- c( 10, 17, 26, 30)
#'
#' squared_error_plot(reference, calculated, title)
#' @import Cairo
#' @import ggplot2
squared_error_plot <- function(reference, calculated, title = "Squared error plot") {

  errs <- squared_error(reference, calculated)

  plot <- ggplot(data.frame(reference, calculated, errs), aes(y = reference, x = errs)) +
                 geom_point(fill="goldenrod", col=1, alpha=0.5, size=2, shape=21)+
                 geom_smooth(col="red")+
                 scale_y_continuous(name="Reference Values")+
                 scale_x_continuous(name = "Squared-error")+
                 labs(title = title) +
                 theme_classic()+
                 theme(plot.title = element_text())

  return(plot)


}
