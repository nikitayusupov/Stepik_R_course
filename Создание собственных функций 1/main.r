outliers.rm <- function(x){

    qs = quantile(x, probs = c(0.25, 0.75))
    res = vector()

    for (el in x) {
      if (el < qs[1] & (qs[1] - el) > 1.5 * IQR(x)) {
        # print('lower')
      } else if (el > qs[2] & (el - qs[2]) > 1.5 * IQR(x)) {
        # print('upper')
      } else {
        res = c(res, el)
      }
    }
    
    return(res)
}
