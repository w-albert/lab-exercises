## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# can't sum numbers w/ strings

# install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# no function defined as str_length

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# initial isnt defined -- typo, should be initials


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
example_vector <- c(1, 2, 3)
print(typeof(example_vector))
# Write a function `compare_length` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
compare_length <- function(vec1, vec2) {
  n <- length(vec1)
  m <- length(vec2)
  diff <- abs(n - m)
  conclusion <- paste("The difference in lengths is", diff)
  print(conclusion)
}

ex2_vector <- c(3, 4, 5, 5, 6, 7, 2, 4, 9)
compare_length(example_vector, ex2_vector)

# Pass two vectors of different length to your `compare_length` function
# see above

# Write a function `describe_difference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
describe_difference <- function(vec1, vec2) {
  n <- length(vec1)
  m <- length(vec2)
  diff <- abs(n - m)
  if (n > m) {
    message1 <- paste("Your first vector is longer by ", diff, "elements.")
    print(message1)
  } else {
    message2 <- paste("Your second vector is longer by ", diff, "elements.")
    print(message2)
  }
}
# Pass two vectors to your `describe_difference` function
describe_difference(ex2_vector, example_vector)

# Write a function `combine_vectors` that takes in 3 vectors and combines them into one
combine_vectors <- function(v1, v2, v3) {
  combined <- c(v1, v2, v3)
  print(combined)
}
# Send 3 vectors to your function to test it.
ex3_vec <- c(1, 3, 5, 7)
combine_vectors(ex2_vector, ex3_vec, example_vector)
# Write a function `caps_time` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
# no
