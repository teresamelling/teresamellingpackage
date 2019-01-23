#' Mean number of passengers in selected months per year.
#'
#' This is a generic function which takes a data set as its argument.
#'
#' Each column in the data set should represent one specific year.
#'
#' If the argument does not have the class of data frame or numeric
#' the function will return the class of the function.
#'
#' \code{mean_per_year} returns the mean of each column
#'or vector present in the data set if has the class of data frame or numeric.
#'
#' @param dataset A data set.
#' @return The mean number of airline passengers per year in the uk.
#' @examples
#' year_2015 <- c(34, 67, 71)
#' mean_per_year(year_2015)
#'
#' number_of_airpassengers_in_uk is a data frame
#' mean_per_year(number_of_airpassengers_in_uk)
#' @export
mean_per_year <- function(dataset, ...) UseMethod("mean_per_year")

mean_per_year.data.frame <- function(dataset, ...){
  per_year <- c()
    for(i in 1:length(dataset[ , 1])){
      per_year[i] <- sum(dataset[ , i])/length(dataset[ , 1])
    }
  print(per_year)
}

mean_per_year.numeric <- function(dataset, ...){
  sum(dataset)/length(dataset)
}

mean_per_year.default <- function(dataset, ...){
  class(dataset)
}




