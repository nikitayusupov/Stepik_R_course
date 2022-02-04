smart_cor <- function(x){
    # x <-  data.frame(rexp(150), rexp(150))

    p1 = shapiro.test(x[,1])$p.value
    p2 = shapiro.test(x[,2])$p.value
    # p1
    # p2
    if (p1 < 0.05 | p2 < 0.05) {
      fit <- cor.test(x[,1], x[,2], method = 'spearman')
      # print('spearman')
    } else {
      fit <- cor.test(x[,1], x[,2], method = 'pearson')
      # print('pearson')
    }
    fit$estimate

}