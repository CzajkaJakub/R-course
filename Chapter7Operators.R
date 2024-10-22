#EX

# Equality
# The most basic form of comparison is equality. Let's briefly recap its syntax. The following statements all evaluate to TRUE (feel free to try them out in the console).
#
# 3 == (2 + 1)
# "intermediate" != "r"
# TRUE != FALSE
# "Rchitect" != "rchitect"
# Notice from the last expression that R is case sensitive: "R" is not equal to "r". Keep this in mind when solving the exercises in this chapter!

# Comparison of logicals
TRUE == FALSE


# Comparison of numerics

-6*14 != 17-101

# Comparison of character strings

"useR" == "user"

# Compare a logical with a numeric

TRUE == 1

#EX

# Greater and less than
# Apart from equality operators, Filip also introduced the less than and greater than operators: < and >. You can also add an equal sign to express less than or equal to or greater than or equal to, respectively. Have a look at the following R expressions, that all evaluate to FALSE:
#
# (1 + 2) > 4
# "dog" < "Cats"
# TRUE <= FALSE
# Remember that for string comparison, R determines the greater than relationship based on alphabetical order. Also, keep in mind that TRUE is treated as 1 for arithmetic, and FALSE is treated as 0. Therefore, FALSE < TRUE is TRUE.

# Comparison of numerics
-6 * 5 + 2 >= -10 + 1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals

TRUE > FALSE

#EX

# Compare vectors
# You are already aware that R is very good with vectors. Without having to change anything about the syntax, R's relational operators also work on vectors.
#
# Let's go back to the example that was started in the video. You want to figure out whether your activity on social media platforms have paid off and decide to look at your results for LinkedIn and Facebook. The sample code in the editor initializes the vectors linkedin and facebook. Each of the vectors contains the number of profile views your LinkedIn and Facebook profiles had over the last seven days.

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15

# Quiet days

linkedin <= 5

# LinkedIn more popular than Facebook

linkedin > facebook

#EX

# Compare matrices
# R's ability to deal with different data structures for comparisons does not stop at vectors. Matrices and relational operators also work together seamlessly!
#
# Instead of in vectors (as in the previous exercise), the LinkedIn and Facebook data is now stored in a matrix called views. The first row contains the LinkedIn information; the second row the Facebook information. The original vectors facebook and linkedin are still available as well.

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?

views <= 14

#EX

# & and |
# Before you work your way through the next exercises, have a look at the following R expressions. All of them will evaluate to TRUE:
#
# TRUE & TRUE
# FALSE | TRUE
# 5 <= 5 & 2 < 3
# 3 < 4 | 7 < 6
# Watch out: 3 < x < 7 to check if x is between 3 and 7 will not work; you'll need 3 < x & x < 7 for that.
#
# In this exercise, you'll be working with the last variable. This variable equals the last value of the linkedin vector that you've worked with previously. The linkedin vector represents the number of LinkedIn views your profile had in the last seven days, remember? Both the variables linkedin and last have been pre-defined for you.

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20


#EX
# & and | (2)
# Like relational operators, logical operators work perfectly fine with vectors and matrices.
#
# Both the vectors linkedin and facebook are available again. Also a matrix - views - has been defined; its first and second row correspond to the linkedin and facebook vectors, respectively. Ready for some advanced queries to gain more insights into your social outreach?

# The social data (linkedin, facebook, views) has been created for you

# linkedin exceeds 10 but facebook below 10
linkedin  > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?

views > 11 & views <= 14

#EX
# Blend it all together
# With the things you've learned by now, you're able to solve pretty cool problems.
#
# Instead of recording the number of views for your own LinkedIn profile, suppose you conducted a survey inside the company you're working for. You've asked every employee with a LinkedIn profile how many visits their profile has had over the past seven days. You stored the results in a data frame called li_df. This data frame is available in the workspace; type li_df in the console to check it out.

# li_df is pre-loaded in your workspace

# Select the second column, named day2, from li_df: second
second <- li_df$day2

# Build a logical vector, TRUE if value in second is extreme: extremes
extremes <- second > 25 | second < 5

# Count the number of TRUEs in extremes
sum(extremes)

#EX
# The if statement
# Before diving into some exercises on the if statement, have another look at its syntax:
#
# if (condition) {
# expr
# }
# Remember your vectors with social profile views? Let's look at it from another angle. The medium variable gives information about the social website; the num_views variable denotes the actual number of views that particular medium had on the last day of your recordings. Both variables have been pre-defined for you.

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Examine the if statement for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# Write the if statement for num_views
if (num_views > 15) {
  print("You are popular!")
}

#EX
# Add an else
# You can only use an else statement in combination with an if statement. The else statement does not require a condition; its corresponding code is simply run if all of the preceding conditions in the control structure are FALSE. Here's a recipe for its usage:
#
# if (condition) {
#   expr1
# } else {
#   expr2
# }
# It's important that the else keyword comes on the same line as the closing bracket of the if part!
#
# Both if statements that you coded in the previous exercises are already available to use. It's now up to you to extend them with the appropriate else statements!
#
# Instructions
# 100 XP
# Add an else statement to both control structures, such that
#
# "Unknown medium" gets printed out to the console when the if-condition on medium does not hold.
# R prints out "Try to be more visible!" when the if-condition on num_views is not met.

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}



# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}

#EX
# Customize further: else if
# The else if statement allows you to further customize your control structure. You can add as many else if statements as you like. Keep in mind that R ignores the remainder of the control structure once a condition has been found that is TRUE and the corresponding expressions have been executed. Here's an overview of the syntax to freshen your memory:
#
# if (condition1) {
#   expr1
# } else if (condition2) {
#   expr2
# } else if (condition3) {
#   expr3
# } else {
#   expr4
# }
# Again, It's important that the else if keywords comes on the same line as the closing bracket of the previous part of the control construct!

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else if (medium == "Facebook") {
  # Add code to print correct string when condition is TRUE
  print("Showing Facebook information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  # Add code to print correct string when condition is TRUE
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}

#EX

# Else if 2.0
# You can do anything you want inside if-else constructs. You can even put in another set of conditional statements. Examine the following code chunk:
#
# if (number < 10) {
# if (number < 5) {
# result <- "extra small"
# } else {
# result <- "small"
# }
# } else if (number < 100) {
# result <- "medium"
# } else {
# result <- "large"
# }
# print(result)
# Have a look at the following statements:
#
# If number is set to 6, "small" gets printed to the console.
# If number is set to 100, R prints out "medium".
# If number is set to 4, "extra small" gets printed out to the console.
# If number is set to 2500, R will generate an error, as result will not be defined.
# Select the option that lists all the true statements.

if (number < 10) {
  if (number < 5) {
    result <- "extra small"
  } else {
    result <- "small"
  }
} else if (number < 100) {
  result <- "medium"
} else {
  result <- "large"
}
print(result)


#EX

# Take control!
# In this exercise, you will combine everything that you've learned so far: relational operators, logical operators and control constructs. You'll need it all!
#
# We've pre-defined two values for you: li and fb, denoting the number of profile views your LinkedIn and Facebook profile had on the last day of recordings. Go through the instructions to create R code that generates a 'social media score', sms, based on the values of li and fb.

# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li >= 15 & fb >= 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li+fb
}

# Print the resulting sms to the console
print(sms)

#EX
