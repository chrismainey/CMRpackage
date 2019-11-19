context("square error function working")

original <-  rnorm(50, 25, 7)
new <- original + rnorm(50, 0, 4)

test_that("Check square error >= error", {

  expect_gte(sum(squared_error(original, new)), sum(original- new))

  expect_equal(sum(squared_error(original, new)) , sum((original- new)^2))

})
