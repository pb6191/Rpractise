newTib123 <- tribble(
  ~x, ~y,  ~z,
  "a", 2,  3.6,
  "b", 1,  8.5
)
newTib123
newTib123 %>% 
  nest(data = c(y, z)) %>%
  select(data) %>%
  unnest(c(data)) %>%
  filter(y==2)
  

newTib1234 <- tribble(
  ~x, ~y1,  ~y2,
  "a", 2,  3.6,
  "b", 1,  8.5
)
newTib1234 <- as.data.frame(newTib1234)
newTib1234Long <- reshape(newTib1234, varying = c("y1", "y2"), times = c("y1", "y2"), v.names="yVal", timevar = "y", direction = "long")
newTib1234Long

fit <- aov(yVal ~ id, newTib1234Long)
anova(fit)
