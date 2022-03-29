# this list should contain the names of your INDEPENDENT VARIABLES
# you should not include your dependent variables
# if you already use a filter set it to inactive
# hint: you can get the names of your variable with names(data)
# the syntax is adjusted for jamovi (the data frame is called data,
# but can easily be used within R by just changing data to the name of your data frame
VL = c('dan.sleep', 'baby.sleep', 'day')
# brief explanation: the code calculates the Mahalanobis distance for all variables in VL,
# then calculates the p-value (pchisq) and show lines with variables that had a p-value < 0.001 
which(pchisq(unname(
  mahalanobis(data[, VL], colMeans(data[, VL]), cov(data[, VL]))), 
  df=length(VL), lower.tail=FALSE) < 0.001)

