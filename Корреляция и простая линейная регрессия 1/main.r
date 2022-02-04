filtered.cor <- function(x){
    library(psych)

    nums <- unlist(lapply(x, is.numeric))  
    x = x[ , nums]

    res = corr.test(x)
    diag(res$r) <- 0
    res$r[which.max(abs(res$r))]

}