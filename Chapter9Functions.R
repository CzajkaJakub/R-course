# Function documentation
# Before even thinking of using an R function, you should clarify which arguments it expects. All the relevant details such as a description, usage, and arguments can be found in the documentation. To consult the documentation on the sample() function, for example, you can use one of following R commands:
#
# help(sample)
# ?sample
# If you execute these commands, you'll be redirected to www.rdocumentation.org.
#
# A quick hack to see the arguments of the sample() function is the args() function. Try it out in the console:
#
# args(sample)
# In the next exercises, you'll be learning how to use the mean() function with increasing complexity. The first thing you'll have to do is get acquainted with the mean() function.

# Use a function
# The documentation on the mean() function gives us quite some information:
#
# The mean() function computes the arithmetic mean.
# The most general method takes multiple arguments: x and ....
# The x argument should be a vector containing numeric, logical or time-related information.
# Remember that R can match arguments both by position and by name. Can you still remember the difference? You'll find out in this exercise!
#
# Once more, you'll be working with the view counts of your social network profiles for the past 7 days. These are stored in the linkedin and facebook vectors and have already been created for you.

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li <- mean(linkedin)
avg_fb <- mean(facebook)


# Inspect avg_li and avg_fb
avg_li
avg_fb

# Use a function (2)
# Check the documentation on the mean() function again:
#
# ?mean
# The Usage section of the documentation includes two versions of the mean() function. The first usage,
#
# mean(x, ...)
# is the most general usage of the mean function. The 'Default S3 method', however, is:
#
# mean(x, trim = 0, na.rm = FALSE, ...)
# The ... is called the ellipsis. It is a way for R to pass arguments along without the function having to name them explicitly. The ellipsis will be treated in more detail in future courses.
#
# For the remainder of this exercise, just work with the second usage of the mean function. Notice that both trim and na.rm have default values. This makes them optional arguments.

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum <- mean(linkedin + facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed <- mean(linkedin + facebook, trim = 0.2, na.rm = FALSE)

# Inspect both new variables
avg_sum
avg_sum_trimmed

# Use a function (3)
# In the video, Filip guided you through the example of specifying arguments of the sd() function. The sd() function has an optional argument, na.rm that specified whether or not to remove missing values from the input vector before calculating the standard deviation.
#
# If you've had a good look at the documentation, you'll know by now that the mean() function also has this argument, na.rm, and it does the exact same thing. By default, it is set to FALSE, as the Usage of the default S3 method shows:
#
# mean(x, trim = 0, na.rm = FALSE, ...)
# Let's see what happens if your vectors linkedin and facebook contain missing values (NA).

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of linkedin
mean(linkedin, trim=0.1, na.rm=TRUE)
# TRUE
# Functions inside functions
# You already know that R functions return objects that you can then use somewhere else. This makes it easy to use functions inside functions, as you've seen before:
#
# speed <- 31
# print(paste("Your speed is", speed))
# Notice that both the print() and paste() functions use the ellipsis - ... - as an argument. Can you figure out how they're used?

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(linkedin-facebook), na.rm=TRUE)

# Required, or optional?
# By now, you will probably have a good understanding of the difference between required and optional arguments. Let's refresh this difference by having one last look at the mean() function:
#
# mean(x, trim = 0, na.rm = FALSE, ...)
# x is required; if you do not specify it, R will throw an error. trim and na.rm are optional arguments: they have a default value which is used if the arguments are not explicitly specified.
#
# Which of the following statements about the read.table() function are true?
#
# header, sep and quote are all optional arguments.
# row.names and fileEncoding don't have default values.
# read.table("myfile.txt", "-", TRUE) will throw an error.
# read.table("myfile.txt", sep = "-", header = TRUE) will throw an error.

# Write your own function
# Wow, things are getting serious… you're about to write your own function! Before you have a go at it, have a look at the following function template:
#
# my_fun <- function(arg1, arg2) {
#   body
# }
# Notice that this recipe uses the assignment operator (<-) just as if you were assigning a vector to a variable for example. This is not a coincidence. Creating a function in R basically is the assignment of a function object to a variable! In the recipe above, you're creating a new R variable my_fun, that becomes available in the workspace as soon as you execute the definition. From then on, you can use the my_fun as a function.

# Create a function pow_two()
# Create a function pow_two()
pow_two <- function(x){
  return(x*x)
}


# Use the function
pow_two(12)

# Create a function sum_abs()
sum_abs <- function(x, y){
  return (sum(abs(x), abs(y)))
}


# # Use the function
# sum_abs(-2, 3)
#
# Write your own function (2)
# There are situations in which your function does not require an input. Let's say you want to write a function that gives us the random outcome of throwing a fair die:
#
# throw_die <- function() {
#   number <- sample(1:6, size = 1)
#   number
# }
#
# throw_die()
# Up to you to code a function that doesn't take any arguments!

# Define the function hello()
hello <- function(){
  print("Hi there!")
  return(TRUE)
}


# Call the function hello()
hello()


# Write your own function (3)
# Do you still remember the difference between an argument with and without default values? The usage section in the sd() documentation shows the following information:
#
# sd(x, na.rm = FALSE)
# This tells us that x has to be defined for the sd() function to be called correctly, however, na.rm already has a default value. Not specifying this argument won't cause an error.
#
# You can define default argument values in your own R functions as well. You can use the following recipe to do so:
#
# my_fun <- function(arg1, arg2 = val2) {
#   body
# }
# The editor on the right already includes an extended version of the pow_two() function from before. Can you finish it?

# Finish the pow_two() function
pow_two <- function(x, print_info = TRUE) {
  y <- x ^ 2

  if(print_info == TRUE){
    print(paste(x, "to the power two equals", y))
  }

  return(y)
}

# Function scoping
# An issue that Filip did not discuss in the video is function scoping. It implies that variables that are defined inside a function are not accessible outside that function. Try running the following code and see if you understand the results:
#
# pow_two <- function(x) {
# y <- x ^ 2
# return(y)
# }
# pow_two(4)
# y
# x
# y was defined inside the pow_two() function and therefore it is not accessible outside of that function. This is also true for the function's arguments of course - x in this case.
#
# Which statement is correct about the following chunk of code? The function two_dice() is already available in the workspace.
#
# two_dice <- function() {
#   possibilities <- 1:6
#   dice1 <- sample(possibilities, size = 1)
#   dice2 <- sample(possibilities, size = 1)
#   dice1 + dice2
# }



# R you functional?
# Now that you've acquired some skills in defining functions with different types of arguments and return values, you should try to create more advanced functions. As you've noticed in the previous exercises, it's perfectly possible to add control-flow constructs, loops and even other functions to your function body.
#
# Remember our social media example? The vectors linkedin and facebook are already defined in the workspace so you can get your hands dirty straight away. As a first step, you will be writing a function that can interpret a single value of this vector. In the next exercise, you will write another function that can handle an entire vector at once.

# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return (num_views)
  } else {
    print("Try to be more visible!")
    return (0)

  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])

# R you functional? (2)
# A possible implementation of the interpret() function has been provided for you. In this exercise you'll be writing another function that will use the interpret() function to interpret all the data from your daily profile views inside a vector. Furthermore, your function will return the sum of views on popular days, if asked for. A for loop is ideal for iterating over all the vector elements. The ability to return the sum of views on popular days is something you can code through a function argument with a default value.

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Define the interpret_all() function
# views: vector with data to interpret
# return_sum: return total number of views on popular days?
interpret_all <- function(views, return_sum=TRUE) {
  count <- 0

  for (v in views) {
    count <- count + interpret(v)
  }

  if (return_sum) {
    return(count)
  } else {
    return(NULL)
  }
}

# Call the interpret_all() function on both linkedin and facebook
interpret_all(linkedin)
interpret_all(facebook)

# Load an R Package
# There are basically two extremely important functions when it comes down to R packages:
#
# install.packages(), which as you can expect, installs a given package.
# library() which loads packages, i.e. attaches them to the search list on your R workspace.
# To install packages, you need administrator privileges. This means that install.packages() will thus not work in the DataCamp interface. However, almost all CRAN packages are installed on our servers. You can load them with library().
#
# In this exercise, you'll be learning how to load the ggplot2 package, a powerful package for data visualization. You'll use it to create a plot of two variables of the mtcars data frame. The data has already been prepared for you in the workspace.
#
# Before starting, execute the following commands in the console:
#
# search(), to look at the currently attached packages and
# qplot(mtcars$wt, mtcars$hp), to build a plot of two variables of the mtcars data frame.
# An error should occur, because you haven't loaded the ggplot2 package yet!

# Load the ggplot2 package
library(ggplot2)

# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)
search()
# Check out the currently attached packages again
qplot(mtcars$wt, mtcars$hp)
search()