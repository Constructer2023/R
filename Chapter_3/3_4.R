x <- c(1 : 10)
y <- x
z <- 10 / x
opar <- par(no.readonly = TRUE)

# Set margin size
par(mar = c(5, 4, 4, 8) + 0.1)
# Disable the y axis and titles and axis labels
plot(x, y, type = "b", pch = 21, col = "red", yaxt = "n", lty = 3, ann = FALSE)
# Append a line (x ~ 1 / x) to current graph
lines(x, z, type = "b", pch = 22, col = "blue", lty = 2)
# Add an axis to the left of graph, tick marks are painted at x vector and the 
# labels are the same as values, the labels will be added perpendicular to axis
axis(2, at = x, labels = x, col.axis = "red", las = 2)
# Add an axis to the right of graph, tick marks are painted at z vector and the 
# labels are round z, the labels will be added perpendicular to axis, its length 
# are 0.01 according to the graph outside
axis(4, at = z, labels = round(z, digits = 2), col.axis = "blue",
     las = 2, cex.axis = 0.7, tck = -.01)
# Add annotation to y axis and set some parameters
mtext("y = 1 / x", side = 4, line = 3, cex.lab = 1, las = 2, col = "blue")
# Add title to the graph, besides x label and y label
title("An Example of Creative Axes", xlab = "X values", ylab = "Y = X")
par(opar)