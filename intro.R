die <- 1:6
die - 1
die / 2
die * die
die + 1:2
die + 1:4 # vector recycling
die %*% die

sample(die, size = 2)
args(round)
sample(die, size = 2, replace = TRUE)
dice <- sample(die, size = 2, replace = TRUE) # remain same

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice) # The last line of code means return
}
roll()
dice

### arguments
roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2(1:4)

### The default values
roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}
roll2(1:4)