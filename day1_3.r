# Enter your code here. Read input from STDIN. Print output to STDOUT
# The first line contains an integer denoting the number of elements in the array.
# The second line contains space-separated integers describing the respective elements of the array.
data <- suppressWarnings(readLines(file("stdin")))

# Convert the second line to  a vector of integers
v <- as.integer(strsplit(data[2]," ")[[1]])

# Mean
mean <- mean(v)

# Compute standard deviation
std <- sqrt(sum((v - mean)^2) / length(v))

# Print standard deviation
write(formatC(std, format="f", digits=1), stdout())