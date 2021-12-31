arbuthnot2 <- arbuthnot %>%
  transform(year = year * 2)
arbuthnot2
merge(arbuthnot, arbuthnot2, all.y = TRUE)
