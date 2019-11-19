context("Plot is working")

original <-  rnorm(50, 25, 7)
new <- original + rnorm(50, 0, 4)

test_that("str_length is number of characters", {
 expect_is(squared_error_plot(original, new), "ggplot")
})
