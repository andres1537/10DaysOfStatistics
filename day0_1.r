# Day 0: Mean, Median, and Mode
# Enter your code here. Read input from STDIN. Print output to STDOUT
# Read input data from stdin. The input are two lines, The first line contains an integer denoting the number of elements in the array.
# The second line contains space-separated integers describing the array's elements. Ex:
# 10
# 64630 11735 14216 99233 14470 4978 73429 38120 51135 67060
data <- suppressWarnings(readLines(file("stdin")))

# Convert the second line to a vector of integers
v <- as.integer(strsplit(data[2]," ")[[1]])

# Print mean and median to stdout
write(mean(v), stdout())
write(median(v), stdout())

# Compute the mode
mode <- function(v) {
   vs <- sort(v)
   uniqv <- unique(vs)
   uniqv[which.max(tabulate(match(vs, uniqv)))]
}

# Print mode to stdout
write(mode(v), stdout())