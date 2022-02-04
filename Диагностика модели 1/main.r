resid.norm  <- function(fit){
  color = ifelse(
    shapiro.test(fit$residuals)$p.value < 0.05,
    'red',
    'green'
  )  
  library(ggplot2)
  ggplot(fit, aes(fit$residuals)) +
    geom_histogram(fill=color)
}