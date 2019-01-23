
context("mean_per_year")

library(testthat)
library(teresamelling)

test_that("mean_per_year is mean of an input vector", {
  expect_equal(mean_per_year(c(1, 2, 3)), 2)
  expect_equal(mean_per_year(c(30, 40, 20)), 30)
  expect_equal(mean_per_year(c(1, 5, 3, 3)), 3)
})


test_that("mean_per_year returns class when input is a list", {
  expect_match(mean_per_year(list(c(1, 4, 6))), "list")
  expect_match(mean_per_year(list(c(5, 87, 90))), "list")
  expect_match(mean_per_year(list(c(65, 94, 6))), "list")
})

test_that("mean_per_year returns mean of each column of the input data frame", {
  expect_equal(mean_per_year(number_of_airpassengers_in_uk), c(48.666666666667, 48.666666666667, 48.666666666667))
})
