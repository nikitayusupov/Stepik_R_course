df = subset(airquality, Month %in% 7:9)
result <- aggregate(Ozone ~ Month, df, length)
