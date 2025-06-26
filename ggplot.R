library(ggplot2)
library(viridis)
library(dplyr)
library(palmerpenguins)

glimpse(penguins)

ggplot(data = penguins,
       mapping = aes(x = sex, y = body_mass_g, fill = sex)) +
  geom_boxplot() +
  labs(
    title = "Penguin body mass and sex",
    x = "Sex",
    y = "Body mass (g)",
    fill = "Sex"
  ) +
  theme_light(base_size = 14) +
  facet_wrap(vars(species))


# Define the plot object
ggplot(data = penguins,
       mapping = aes(x = bill_length_mm, y = body_mass_g, color = species, shape = species)) +
  geom_point() +
  annotate("text", x = 61, y = 5900, label = "Bob <3") +
  labs(
    title = "Penguin body mass and bill length",
    x = "Bill length",
    y = "Body mass (g)",
    color = "Species",
    shape = "Species"
  ) +
  scale_color_viridis(discrete = TRUE, end = 0.9) +
  theme_light(base_size = 14)
