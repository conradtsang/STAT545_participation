library(gapminder)
str(gapminder)
library(tidyverse)

class(gapminder)
gapminder
head(gapminder)
tail(gapminder)
as_tibble(iris)
names(gapminder)
ncol(gapminder)
length(gapminder)
dim(gapminder)
nrow(gapminder)
summary(gapminder)

plot(lifeExp ~ year, gapminder)
plot(lifeExp ~ gdpPercap, gapminder)
plot(lifeExp ~ log(gdpPercap), gapminder)

str(gapminder)
head(gapminder$lifeExp)
summary(gapminder$lifeExp)
hist(gapminder$lifeExp)

summary(gapminder$year)
table(gapminder$year)

class(gapminder$continent)
summary(gapminder$continent)
levels(gapminder$continent)
nlevels(gapminder$continent)
str(gapminder$continent)

table(gapminder$continent)
barplot(table(gapminder$continent))

p <- ggplot(filter(gapminder, continent !="Oceania"),
            aes(x = gdpPercap, y = lifeExp))
p <- p + scale_x_log10()
p + geom_point()
p + geom_point(aes(color = continent))
p + geom_point(alpha = (1/3), size = 3) + geom_smooth(lwd = 3, se = FALSE)
p + geom_point(alpha = (1/3), size = 3) + facet_wrap(~ continent) +
  geom_smooth(lwd = 1.5, se = FALSE)
