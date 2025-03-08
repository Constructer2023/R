library(sqldf)
# Using SQL to manipulate date frame
newdf <- sqldf("SELECT *
                FROM mtcars
                WHERE carb = 1
                ORDER BY mpg DESC",
              row.names = TRUE)
newdf
sqldf("SELECT avg(mpg) AS avg_mpg, avg(disp) AS avg_disp, gear
       FROM mtcars
       WHERE cyl in (4, 6)
       GROUP BY gear")
