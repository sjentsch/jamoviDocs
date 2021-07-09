# this list should contain the names of ALL VARIABLES
# if you already use a filter set it to inactive
# hint: you can get the names of your variable with names(data)
# the syntax is adjusted for jamovi (the data frame is called data,
# but can easily be used within R by just changing data to the name of your data frame
VL = c('dan.sleep', 'baby.sleep', 'dan.grump', 'day')
# if you intend to remove extreme outliers, choose 3 here (more than two whiskers outside),
# for moderate outliers choose 1.5 (outside the first whisker)
limIQR = 3
for (VC in VL) {
  V = as.double(unlist(data[VC]))
  outBln = V < quantile(V, 1/4) - limIQR * IQR(V) | V > quantile(V, 3/4) + limIQR * IQR(V)
  print(VC); print(which(outBln))
}
