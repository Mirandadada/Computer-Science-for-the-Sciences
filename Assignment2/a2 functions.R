forecast_previous <- function (data_frame, past_value){
  i<-length(past_value)
  previous<-past_value[i]
  previous
}

forecast_week_ago <- function (data_frame, past_value){
  i<-length(past_value)
  week_ago<-past_value[i-6]
  week_ago
}

forecast_mean <-function (data_frame, past_value){
  ave_all<-mean(past_value)
  ave_all
}

forecast_mean14<- function(data_frame, past_value){
  i<-length(past_value)
  ave_14<-mean(past_value[(i-13):i])
  ave_14
}

forecast_same_day_of_week<-function(data_frame, past_value){
  i<-length(past_value)
  data_past<-data_frame[1:i,,drop=FALSE]
  ave_same_day_of_week<-mean(past_value[(data_past$day_of_week==data_frame$day_of_week[i+1])])
  ave_same_day_of_week
}

forecast_same_month<-function(data_frame, past_value){
  i<-length(past_value)
  data_past<-data_frame[1:i,,drop=FALSE]
  ave_same_month<-mean(past_value[data_past$month==data_frame$month[i+1]])
  ave_same_month
}

forecast_similar_tmax<-function(data_frame, past_value){
  i<-length(past_value)
  data_past<-data_frame[1:i,,drop=FALSE]
  different<-abs(data_past$tmax-data_frame$tmax[i+1])
  ave_similar_tmax<-mean(past_value[different<=4])
  ave_similar_tmax
}  

predictions<-function(forecast_function,data_frame,value_for_which_forecast,start){
  result<-list(numeric(0))
  past<-list(numeric(0))
    i<-(start:nrow(data_frame))
    k<-1
    repeat{
      if (k>length(i))
        break
      else {past[[k]]<-value_for_which_forecast[1:(i[k]-1)]
      result[[k]]<-forecast_function(data_frame,past[[k]])
      k<-k+1}
    }
  final<-unlist(result)
  final
}

predictions2<-function(forecast_func1,forecast_func2,data_frame,value_for_which_forecast,start1,start2){
  first_forecast<-predictions(forecast_func1,data_frame,value_for_which_forecast,start1)
  error1<-first_forecast-value_for_which_forecast[start1:nrow(data_frame)]
  past_error<-error1[1:(start2-start1)]
  error<-numeric(nrow(data_frame))
  error[start1:nrow(data_frame)]<-error1
  error_forecast<-predictions(forecast_func2,data_frame,error,start2)
  first_plus<-first_forecast[(length(first_forecast)-length(error_forecast)+1):length(first_forecast)]-error_forecast
  first_plus
} 
