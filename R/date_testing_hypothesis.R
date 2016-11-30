# calculate the max span of dating interval, i.e. the maximal interval to which the inscription was dated by the author of the corpus. First the startYR and endYR needs to be first transformed as numerics. The start year minus end year is then transformed in absolute numbers, so any calculations can be made. 
startyr <-c(HAT_all_inscriptions_9Nov2016_xlsx$`Start Year`) #defines the vector
endyr <-c(HAT_all_inscriptions_9Nov2016_xlsx$`End Year`) 
startyrnum <-as.numeric(startyr) #transforms the vector as numeric
endyrnum <-as.numeric(endyr)
span <-c(startyrnum - endyrnum)
spandf <-as.data.frame(span) #transforms the span into data frame
span_abs <-abs(spandf) #transforms the span into absolute numbers (no minus values)
summary(span_abs)
spanhist <-table(span_abs)
spanhistdf <-as.data.frame(spanhist)
hist(spanhist, breaks=40,xlab="Maximal date interval (StartYR-EndYR)",ylab="Number of inscriptions", main="Interval of time span of dated inscriptions (2276)", col="blue")
abline(v=50, col="red")

