# Set digits
options(digits = 2)
# Input data
student <- c("John Davis", "Angela Williams", "Bullwinkle Moose", "David Jones", 
          "Janice Markhammer", "Cheryl Cushing", "Reuven Ytzrhak", 
          "Greg Knox", "Joel England", "Mary Rayburn")
math <- c(502, 600, 412, 358, 495, 512, 410, 625, 573, 522)
science <- c(95, 99, 80, 82, 75, 85, 80, 95, 89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(student, math, science, English, stringsAsFactors = FALSE)
# Calculate total scores
# scale(x) can normalize the values in unit standard deviation
z <- scale(roster[, 2 : 4])
# Calculate the average score of each student
score <- apply(z, 1, mean)
roster <- cbind(roster, score)
# Calculate the quantile
y <- quantile(score, c(.8, .6, .4, .2))
# Grade the students
roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"
# Split students' names, the output is a list
name <- strsplit(roster$student, " ")
# Note that "[" is a function that can extract part of an object, double quotes 
# are a part of the function name
# For example, <code>"["(name, 1)</code> returns "John" "Davis"
# Function sapply(x, FUN), x is object, FUN is the specified function we want to 
# apply
Lastname <- sapply(name, "[", 2)
Firstname <- sapply(name, "[", 1)
# We no longer need to keep student column in roster, so drop it by using index 
# "-1" in the roster column, if the index be "-2", then drop the first two columns
roster <- cbind(Firstname, Lastname, roster[, -1])
# Order the students by Lastname then Firstname
roster <- roster[order(Lastname, Firstname), ]
roster
