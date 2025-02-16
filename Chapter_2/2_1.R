attach(mtcars)
  summary(mtcars$mpg)
  plot(mtcars$mpg, mtcars$disp)
  plot(mtcars$mpg, mtcars$wt)
detach(mtcars)
with(mtcars, {
  print(summary(mpg))
  plot(mpg, disp)
  plot(mpg, wt)
})
with(mtcars,{
  nokeepstats <- summary(mpg)
  keepstats <<- summary(mpg)
})
keepstats
nokeepstats
