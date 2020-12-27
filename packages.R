install.packages("ggplot2")
library(ggplot2)
qplot # quick plots

### With element-wise execution
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
y <- x^3
qplot(x, y) # scatterplot if two vectors of equal lengths are given

x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1) # histogram if only one vector is given

rolls <- replicate(10000, roll()) # replicate for repeat
qplot(rolls, binwidth = 1)