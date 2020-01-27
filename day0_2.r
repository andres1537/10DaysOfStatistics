# Day 0: Weighted Mean
# Enter your code here. Read input from STDIN. Print output to STDOUT
# Read input data from stdin. The input are three lines, the first line contains an integer denoting the number of elements in arrays. The second line contains  space-separated integers describing the respective elements of array. The third line contains  space-separated integers describing the respective elements of array. Ex:
# 5
# 10 40 30 50 20
# 1 2 3 4 5
data <- suppressWarnings(readLines(file("stdin")))

# Convert the second and third lines to two vectors of integers
v <- as.integer(strsplit(data[2]," ")[[1]])
w <- as.integer(strsplit(data[3]," ")[[1]])

# Compute weighted mean
weightedMean <- (v %*% w) / sum(w)

# Print weighted to stdout
write(formatC(weightedMean, format="f", digits=1), stdout())