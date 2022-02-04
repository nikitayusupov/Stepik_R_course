regr.calc <- function(x){
    my_df = x
    
    if (cor.test(my_df[,1], my_df[,2])$p.value < 0.05) {
      fit = lm(my_df[, 1] ~ my_df[, 2])
      my_df$fit = predict(fit, list(my_df[, 2]))
      return (my_df)
    } else {
      return ("There is no sense in prediction")
    }
}

