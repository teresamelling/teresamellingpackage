
year_2016 <- c(40, 49, 57)
year_2017 <- c(38, 48, 60)
year_2018 <- c(39, 51, 56)

months_vector <- c("June", "July", "August")

names(year_2016) <- months_vector
names(year_2017) <- months_vector
names(year_2018) <- months_vector

number_of_airpassengers_in_uk <- data.frame(year_2016, year_2017, year_2018)
