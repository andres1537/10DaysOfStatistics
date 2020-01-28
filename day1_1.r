# Enter your code here. Read input from STDIN. Print output to STDOUT
# The first line contains an integer denoting the number of elements in the array.
# The second line contains space-separated integers describing the array's elements.
data <- suppressWarnings(readLines(file("stdin")))

# Convert the second line to a vector of integers
v <- as.integer(strsplit(data[2]," ")[[1]])

# Ascending sorting of the vector
vs <- sort(v)
l <- length(vs)

if (l %% 2 == 0) {
    # even number
    lowerHalf <- vs[1:(l/2)]
    upperHalf <- vs[(ceiling(l/2)+1):l]
    q1 <- median(lowerHalf)
    q2 <- median(vs)
    q3 <- median(upperHalf)
    
} else {
    # odd number
    lowerHalf <- vs[1:floor(l/2)]
    upperHalf <- vs[(ceiling(l/2)+1):l]
    q1 <- median(lowerHalf)
    q2 <- vs[ceiling(l/2)]
    q3 <- median(upperHalf)
}

# Print quartiles to stdout
write(q1, stdout())
write(q2, stdout())
write(q3, stdout())