library(dplyr)
library(ggplot2)
library(readr)

# reading data
iris_data <- read_csv('raw_data/iris.csv')

# subsetting data
setosa_subset <- iris_data |>
  filter(Species == "setosa")


# cool analysis
model_setosa <- lm(Sepal.Length ~ Petal.Length, data = setosa_subset)


# plotting
setosa_plot <- ggplot(setosa_subset, aes(x = Petal.Length, y = Sepal.Length)) +
  geom_point(aes(size = Petal.Width)) +
  stat_smooth(method = "lm") +
  theme_bw()

