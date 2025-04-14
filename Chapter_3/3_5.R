dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opar <- par(no.readonly = TRUE)

par(lwd = 2, cex = 1.5, font.lab = 2)
# Set the range of y axis is 0 to 60, set title, x label, y label
plot(dose, drugA, type = "b", pch = 15, lty = 1, col = "red", ylim = c(0, 60),
     main = "Drug A vs. Drug B", xlab = "Drug Dosage", ylab = "Drug Response")
lines(dose, drugB, type = "b", pch = 17, lty = 2, col = "blue")
# Set reference line where y = 30 and its type
abline(h = c(30), lwd = 1.5, lty = 2, col = "gray")
library(Hmisc)
# Set minor tick marks, there are 3 ranges between each major tick mark both x 
# axis and y axis, its length is the half of the major tick marks
minor.tick(nx = 3, ny = 3, tick.ratio = 0.5)
# Add legends whose title is "Drug Type" on top left of the graph, contents are
# "A" and "B"
legend("topleft", inset = .05, title = "Drug Type", c("A", "B"),
       lty = c(1, 2), pch = c(15, 17), col = c("red", "blue"))
par(opar)
