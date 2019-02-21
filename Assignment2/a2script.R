source("a2funs.R")

houston <- read.table("http://www.cs.utoronto.ca/~radford/csc120/houston",head=TRUE)

predictions(forecast_previous,houston,houston$deaths,731)

predictions(forecast_week_ago,houston,houston$deaths,731)

predictions(forecast_mean,houston,houston$deaths,731)

predictions(forecast_mean14,houston,houston$deaths,731)

predictions(forecast_same_day_of_week,houston,houston$deaths,731)

predictions(forecast_same_month,houston,houston$deaths,731)

predictions(forecast_similar_tmax,houston,houston$deaths,731)

predictions(forecast_previous,houston,houston$tmax,731)

predictions(forecast_week_ago,houston,houston$tmax,731)

predictions(forecast_mean,houston,houston$tmax,731)

predictions(forecast_mean14,houston,houston$tmax,731)

predictions(forecast_same_day_of_week,houston,houston$tmax,731)

predictions(forecast_same_month,houston,houston$tmax,731)

predictions2(forecast_same_month,forecast_similar_tmax,houston,houston$deaths,731,732)
