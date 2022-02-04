fill_na <- function(x){
    test_data = x
    fit = lm(y ~ x_1 + x_2, test_data)

    test_data$y_full = test_data$y
    test_data[is.na(test_data$y), 4] <- 
      predict(fit, subset(test_data, is.na(test_data$y)))

    test_data
}