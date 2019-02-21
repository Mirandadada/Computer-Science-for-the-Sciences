houston <- read.table("http://www.cs.utoronto.ca/~radford/csc120/houston",head=TRUE)

source("a2funs.R")

pdf("~/Desktop/a2plots.pdf")

par(mfrow=c(2,2))


plot(predictions(forecast_previous,houston,houston$deaths,731))
title("forecast_previous, deaths")
plot(houston$deaths[731:2557])
title("actual_previous, deaths")
error_previous_deaths<-(predictions(forecast_previous,houston,houston$deaths,731)-houston$deaths[731:2557])
plot(error_previous_deaths)
title("error_previous_deaths vs time")
a<-error_previous_deaths[1:366]
b<-error_previous_deaths[367:731]
c<-error_previous_deaths[732:1096]
d<-error_previous_deaths[1097:1461]
e<-error_previous_deaths[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_previous_deaths vs day")

plot(predictions(forecast_week_ago,houston,houston$deaths,731))
title("forecast_week_ago, deaths")
plot(houston$deaths[731:2557])
title("actual_week_ago, deaths")
error_week_ago_deaths<-(predictions(forecast_week_ago,houston,houston$deaths,731)-houston$deaths[731:2557])
plot(error_week_ago_deaths)
title("error_week_ago_deaths vs time")
a<-error_week_ago_deaths[1:366]
b<-error_week_ago_deaths[367:731]
c<-error_week_ago_deaths[732:1096]
d<-error_week_ago_deaths[1097:1461]
e<-error_week_ago_deaths[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_week_ago_deaths vs day")


plot(predictions(forecast_mean,houston,houston$deaths,731))
title("forecast_mean, deaths")
plot(houston$deaths[731:2557])
title("actual_forecast_mean, deaths")
error_mean_deaths<-(predictions(forecast_mean,houston,houston$deaths,731)-houston$deaths[731:2557])
plot(error_mean_deaths)
title("error_mean_deaths vs time")
a<-error_mean_deaths[1:366]
b<-error_mean_deaths[367:731]
c<-error_mean_deaths[732:1096]
d<-error_mean_deaths[1097:1461]
e<-error_mean_deaths[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_mean_deaths vs day")

plot(predictions(forecast_mean14,houston,houston$deaths,731))
title("forecast_mean14, deaths")
plot(houston$deaths[731:2557])
title("actual_forecast_mean14, deaths")
error_mean14_deaths<-(predictions(forecast_mean14,houston,houston$deaths,731)-houston$deaths[731:2557])
plot(error_mean14_deaths)
title("error_mean14_deaths vs time")
a<-error_mean14_deaths[1:366]
b<-error_mean14_deaths[367:731]
c<-error_mean14_deaths[732:1096]
d<-error_mean14_deaths[1097:1461]
e<-error_mean14_deaths[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_mean14_deaths vs day")

plot(predictions(forecast_same_day_of_week,houston,houston$deaths,731))
title("forecast_same_day_of_week, deaths")
plot(houston$deaths[731:2557])
title("actual_same_day_of_week, deaths")
error_same_day_of_week_deaths<-(predictions(forecast_same_day_of_week,houston,houston$deaths,731)-houston$deaths[731:2557])
plot(error_same_day_of_week_deaths)
title("error_same_day_of_week_deaths vs time")
a<-error_same_day_of_week_deaths[1:366]
b<-error_same_day_of_week_deaths[367:731]
c<-error_same_day_of_week_deaths[732:1096]
d<-error_same_day_of_week_deaths[1097:1461]
e<-error_same_day_of_week_deaths[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_same_day_of_week_deaths vs day")

plot(predictions(forecast_same_month,houston,houston$deaths,731))
title("forecast_same_month, deaths")
plot(houston$deaths[731:2557])
title("actual_same_month, deaths")
error_same_month_deaths<-(predictions(forecast_same_month,houston,houston$deaths,731)-houston$deaths[731:2557])
plot(error_same_month_deaths)
title("error_same_month_deaths vs time")
a<-error_same_month_deaths[1:366]
b<-error_same_month_deaths[367:731]
c<-error_same_month_deaths[732:1096]
d<-error_same_month_deaths[1097:1461]
e<-error_same_month_deaths[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_same_month_deaths vs day")

plot(predictions(forecast_similar_tmax,houston,houston$deaths,731))
title("forecast_similar_tmax, deaths")
plot(houston$deaths[731:2557])
title("actual_similar_tmax, deaths")
error_similar_tmax_deaths<-(predictions(forecast_similar_tmax,houston,houston$deaths,731)-houston$deaths[731:2557])
plot(error_similar_tmax_deaths)
title("error_similar_tmax_deaths vs time")
a<-error_similar_tmax_deaths[1:366]
b<-error_similar_tmax_deaths[367:731]
c<-error_similar_tmax_deaths[732:1096]
d<-error_similar_tmax_deaths[1097:1461]
e<-error_similar_tmax_deaths[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_similar_tmax_deaths vs day")

plot(predictions(forecast_previous,houston,houston$tmax,731))
title("forecast_previous, tmax")
plot(houston$tmax[731:2557])
title("actual_previous, tmax")
error_previous_tmax<-(predictions(forecast_previous,houston,houston$tmax,731)-houston$tmax[731:2557])
plot(error_previous_tmax)
title("error_previous_tmax vs time")
a<-error_previous_tmax[1:366]
b<-error_previous_tmax[367:731]
c<-error_previous_tmax[732:1096]
d<-error_previous_tmax[1097:1461]
e<-error_previous_tmax[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_previous_tmax vs day")

plot(predictions(forecast_week_ago,houston,houston$tmax,731))
title("forecast_week_ago, tmax")
plot(houston$tmax[731:2557])
title("actual_week_ago, tmax")
error_week_ago_tmax<-(predictions(forecast_week_ago,houston,houston$tmax,731)-houston$tmax[731:2557])
plot(error_week_ago_tmax)
title("error_week_ago_tmax vs time")
a<-error_week_ago_tmax[1:366]
b<-error_week_ago_tmax[367:731]
c<-error_week_ago_tmax[732:1096]
d<-error_week_ago_tmax[1097:1461]
e<-error_week_ago_tmax[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_week_ago_tmax vs day")

plot(predictions(forecast_mean,houston,houston$tmax,731))
title("forecast_mean, tmax")
plot(houston$tmax[731:2557])
title("actual_forecast_mean, tmax")
error_mean_tmax<-(predictions(forecast_mean,houston,houston$tmax,731)-houston$tmax[731:2557])
plot(error_mean_tmax)
title("error_mean_tmax vs time")
a<-error_mean_tmax[1:366]
b<-error_mean_tmax[367:731]
c<-error_mean_tmax[732:1096]
d<-error_mean_tmax[1097:1461]
e<-error_mean_tmax[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_mean_tmax vs day")

plot(predictions(forecast_mean14,houston,houston$tmax,731))
title("forecast_mean14, tmax")
plot(houston$tmax[731:2557])
title("actual_forecast_mean14, tmax")
error_mean14_tmax<-(predictions(forecast_mean14,houston,houston$tmax,731)-houston$tmax[731:2557])
plot(error_mean14_tmax)
title("error_mean14_tmax vs time")
a<-error_mean14_tmax[1:366]
b<-error_mean14_tmax[367:731]
c<-error_mean14_tmax[732:1096]
d<-error_mean14_tmax[1097:1461]
e<-error_mean14_tmax[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_mean14_tmax vs day")

plot(predictions(forecast_same_day_of_week,houston,houston$tmax,731))
title("forecast_same_day_of_week, tmax")
plot(houston$tmax[731:2557])
title("actual_same_day_of_week, tmax")
error_same_day_of_week_tmax<-(predictions(forecast_same_day_of_week,houston,houston$tmax,731)-houston$tmax[731:2557])
plot(error_same_day_of_week_tmax)
title("error_same_day_of_week_tmax vs time")
a<-error_same_day_of_week_tmax[1:366]
b<-error_same_day_of_week_tmax[367:731]
c<-error_same_day_of_week_tmax[732:1096]
d<-error_same_day_of_week_tmax[1097:1461]
e<-error_same_day_of_week_tmax[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_same_day_of_week_tmax vs day")

plot(predictions(forecast_same_month,houston,houston$tmax,731))
title("forecast_same_month, tmax")
plot(houston$tmax[731:2557])
title("actual_same_month, tmax")
error_same_month_tmax<-(predictions(forecast_same_month,houston,houston$tmax,731)-houston$tmax[731:2557])
plot(error_same_month_tmax)
title("error_same_month_tmax vs time")
a<-error_same_month_tmax[1:366]
b<-error_same_month_tmax[367:731]
c<-error_same_month_tmax[732:1096]
d<-error_same_month_tmax[1097:1461]
e<-error_same_month_tmax[1462:1827]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_same_month_tmax vs day")

plot(predictions2(forecast_same_month,forecast_similar_tmax,houston,houston$deaths,731,732))
title("predictions2, deaths")
plot(houston$deaths[732:2557])
title("actual_predictins2, deaths")
error_predictions2_deaths<-(predictions2(forecast_same_month,forecast_similar_tmax,houston,houston$deaths,731,732)-houston$deaths[732:2557])
plot(error_predictions2_deaths)
title("error_predictions2_deaths vs time")
a<-error_predictions2_deaths[1:365]
b<-error_predictions2_deaths[366:730]
c<-error_predictions2_deaths[731:1095]
d<-error_predictions2_deaths[1096:1460]
e<-error_predictions2_deaths[1461:1826]
plot(a)
points(b)
points(c)
points(d)
points(e)
title("error_predictions2_deaths vs day")

dev.off()

