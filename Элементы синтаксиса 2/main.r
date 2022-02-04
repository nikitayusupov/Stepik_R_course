x = AirPassengers
ln = 10
cms = cumsum(x)
moving_average <- (c(cms, numeric(ln)) - c(numeric(ln), cms))[ln:(length(cms))] / ln
