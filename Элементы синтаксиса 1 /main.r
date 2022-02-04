good_months <- c(AirPassengers[2:length(AirPassengers)], -1)[
    c(AirPassengers[2:length(AirPassengers)], -1) > AirPassengers
]