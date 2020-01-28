# Enter your code here. Read input from STDIN. Print output to STDOUT
# The first line contains an integer denoting the number of elements.
# The second line contains space-separated integers describing the respective elements of array.
# The third line contains space-separated integers describing the respective elements of array.
data <- suppressWarnings(readLines(file("stdin")))

# Convert the second and third lines to two vectors of integers
elements <- as.integer(strsplit(data[2]," ")[[1]])
frequencies <- as.integer(strsplit(data[3]," ")[[1]])

# Replicate elements according to frequencies
s <- rep(elements, frequencies)

# Ascending sorting of the vector
vs <- sort(s)
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

# Print interquartile range to stdout
interquartileRange <- q3 - q1
write(formatC(interquartileRange, format="f", digits=1), stdout())