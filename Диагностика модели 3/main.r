normality.test  <- function(x){
  func <- function(x){
    shapiro.test(x)$p.value
  }
  lapply(x, func)
}
