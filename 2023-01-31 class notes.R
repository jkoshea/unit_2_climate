# 
#
#

url = 'ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_mm_mlo.txt'
co2 = read.table(url, col.names = c("year", "month", "decimal_date", "monthly_average", 
                                    "deseasonalized", "n_days", "st_dev_days", "
                                    monthly_mean_uncertainty"))
head(co2)
tail(co2)

pdf('figures/keelingcurve.pdf', width=7, height=5)
plot(monthly_average ~ decimal_date, data=co2, type="l", xlab="Year", ylab="CO2 (ppm)", main="Keeling Curve")
lines(x=co2$decimal_date, y=co2$deseasonalized, col="red")
dev.off


#look at seasonal cycle
co2$seasonal_cycle = co2$monthly_average - co2$deseasonalized
head(co2)

plot(seasonal_cycle ~ decimal_date, data = co2, type="l")

co2$decimal_date>2018
which(co2$decimal_date>2018)
co2[which(co2$decimal_date>2018), ]

plot(seasonal_cycle ~ decimal_date, data = co2[co2$decimal_date>2018, ], type="l")

# finding co2 anomalies each month
jan_anomalies = co2$seasonal_cycle[which(co2$month==1)]
head(jan_anomalies)
mean(jan_anomalies)

co2_monthly_cycle = data.frame(month=seq(12), detrended_monthly_cycle=NA)
head(co2_monthly_cycle)

#calculating mean monthly cycles

co2_monthly_cycle$detrended_monthly_cycle[1] = mean(co2$seasonal_cycle[co2$month==1])
co2_monthly_cycle$detrended_monthly_cycle[2] = mean(co2$seasonal_cycle[co2$month==2])
co2_monthly_cycle$detrended_monthly_cycle[3] = mean(co2$seasonal_cycle[co2$month==3])
co2_monthly_cycle$detrended_monthly_cycle[4] = mean(co2$seasonal_cycle[co2$month==4])
co2_monthly_cycle$detrended_monthly_cycle[5] = mean(co2$seasonal_cycle[co2$month==5])
co2_monthly_cycle$detrended_monthly_cycle[6] = mean(co2$seasonal_cycle[co2$month==6])
co2_monthly_cycle$detrended_monthly_cycle[7] = mean(co2$seasonal_cycle[co2$month==7])
co2_monthly_cycle$detrended_monthly_cycle[8] = mean(co2$seasonal_cycle[co2$month==8])
co2_monthly_cycle$detrended_monthly_cycle[9] = mean(co2$seasonal_cycle[co2$month==9])
co2_monthly_cycle$detrended_monthly_cycle[10] = mean(co2$seasonal_cycle[co2$month==10])
co2_monthly_cycle$detrended_monthly_cycle[11] = mean(co2$seasonal_cycle[co2$month==11])
co2_monthly_cycle$detrended_monthly_cycle[12] = mean(co2$seasonal_cycle[co2$month==12])

plot(detrended_monthly_cycle ~ month, data=co2_monthly_cycle, type = "l")
plot(detrended_monthly_cycle ~ month, type="l", data=co2_monthly_cycle) 



###############################################
###############################################
#now let's talk about loops- why we shouldn't repeat above function 12 times


for(i in c(1,2,3,4)){
  print(i)
}

for (i in c("how", "are", "you")){
  print(i)
}

my_vector = c(1,3,5,2,4)
n=length(my_vector)
my_vector_squared = rep(NA, n)
for(i in seq(n)){
  my_vector_squared[i] = my_vector[i]^2
}
my_vector_squared


my_vector = c(1,3,5,2,4)
my_vector^2
sum(my_vector)
#or use a loop to calculate
total_sum = 0
n = length(my_vector)
for (i in seq(n)){
  total_sum = total_sum + my_vector[i]
  print(total_sum)
}
total_sum


#Exercise 5.1 from tutorial

my_factorial = 3
n = length(my_factorial)
n
for (i in seq(n)){
  my_factorial = 
}

####try to figure this out bc you are dumb

my_integer = 7
answer = 1
for (i in seq(my_integer)){
  answer = answer *1
  print(answer)
}


#nested loops dear god
mat = matrix(c(2, 0, 8, 3, 5, -4), nrow=2)
mat
mat_squared = matrix(NA, nrow=2, ncol=3)
for (i in seq(2)){
  for(j in seq(3)){
      print(paste("i: ", i, "and j: ", j))
     mat_squared[i,j] = mat[i,j]^2
    print(mat_squared)
  }
}
