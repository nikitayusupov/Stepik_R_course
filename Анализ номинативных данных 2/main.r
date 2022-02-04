diamonds$factor_price = factor(diamonds$price > mean(diamonds$price))
diamonds$factor_carat = factor(diamonds$carat > mean(diamonds$carat))

main_stat <- chisq.test(table(diamonds$factor_price, diamonds$factor_carat))$statistic