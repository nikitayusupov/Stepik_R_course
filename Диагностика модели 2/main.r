high.corr <- function(x){
  tb = abs(cor(x))
  diag(tb) <- 0.0
  idx = which.max(tb)
  row_ind = floor(idx / length(rownames(tb)) + ifelse(idx %% length(rownames(tb)) == 0, 0, 1))
  col_ind = (idx - 1) %% length(colnames(tb)) + 1
  c(rownames(tb)[row_ind], colnames(tb)[col_ind])
}