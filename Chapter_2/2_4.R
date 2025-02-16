# In this process, double quotes will be temporary delimiter
grades1 <- read.table("E:\\R\\Chapter_2\\2_1.csv", header = TRUE, 
                      row.names = "StudentID", sep = ",")
grades1
str(grades1)
grades2 <- read.table("E:\\R\\Chapter_2\\2_1.csv", header = TRUE, 
                      row.names = "StudentID", sep = ",", 
                      colClasses = c("character", "character", "character", 
                                   "numeric", "numeric", "numeric"))
grades2
str(grades2)
