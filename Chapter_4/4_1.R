# The example for function as.Date()
mydate <- as.Date(c("2007-06-22", "2004-02-13"))
mydate
strDates <- c("01/05/1965", "08/16/1975")
date <- as.Date(strDates, "%m/%d/%Y")
date
# Use Sys.Date() to print today
Sys.Date()
today <- Sys.Date()
format(today, format = "%B %d %Y")
format(today, format = "%A")
# Calculate the dates
startdate <- as.Date("2003-06-22")
enddate <- Sys.Date()
days <- enddate - startdate
days
# Use function difftime()
dob <- as.Date("2003-11-05", "%Y-%m-%d")
difftime(today, dob, units = "weeks")
