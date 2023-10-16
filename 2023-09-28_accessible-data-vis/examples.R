
# Load packages

library(ggplot2)
library(dplyr)
library(gapminder)
library(sgplot)
library(here)
library(tidyr)
library(gt)


# Create data set

life_exp <-
  gapminder |>
  select(year, country, lifeExp) |>
  filter(country %in% c("United Kingdom", "China", "India",
                        "Sweden", "Namibia", "Brazil"))


# Example 1

ex1 <-
  ggplot(life_exp) +
  geom_line(aes(x = year, y = lifeExp, colour = country)) +
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5))

ggsave(
  ex1, 
  filename = here("2023-09-28_accessible-data-vis", "images", "ex1.svg"),
  width = 200, height = 100, units = "mm"
)


# Example 2

life_exp <- life_exp |>
  filter(country %in% c("United Kingdom", "China"))

use_sgplot()

ex2 <- 
  ggplot(life_exp) +
  geom_line(aes(x = year, y = lifeExp, colour = country))

ggsave(
  ex2, 
  filename = here("2023-09-28_accessible-data-vis", "images", "ex2.svg"),
  width = 200, height = 100, units = "mm"
)


# Example 3

ex3 <-
  ggplot(life_exp) +
  geom_line(aes(x = year, y = lifeExp, colour = country)) +
  theme_sg(legend = "none") +
  scale_y_continuous(limits = c(0, 82),
                     breaks = seq(0, 80, 20),
                     expand = c(0, 0)) +
  scale_x_continuous(limits = c(1952, 2017),
                     breaks = seq(1952, 2007, 5)) +
  annotate(geom = "label", x = 2008, y = 73, label = "China",
           colour = sg_colour_values[1],
           label.size = NA,
           hjust = 0, vjust = 0.5) +
  annotate(geom = "label", x = 2008, y = 79.4, label = "United Kingdom",
           colour = sg_colour_values[2],
           label.size = NA,
           hjust = 0, vjust = 0.5) +
  labs(
    x = "Year",
    y = "Life\nExpectancy"
  )

ggsave(
  ex3, 
  filename = here("2023-09-28_accessible-data-vis", "images", "ex3.svg"),
  width = 220, height = 100, units = "mm"
)


# Alt text table

table <-
  life_exp |>
  mutate(lifeExp = round(lifeExp, 1)) |>
  pivot_wider(names_from = country, values_from = lifeExp) |>
  rename(Year = year) |>
  slice_head(n = 5) |>
  gt() |>
  tab_spanner(
    label = "Life Expectancy",
    columns = !Year
  ) |>
  tab_options(
    table.width = pct(100),
    table.font.size = px(20)) |>
  opt_vertical_padding(scale = 2.5) |>
  opt_horizontal_padding(scale = 2.5)

gtsave(
  table,
  here("2023-09-28_accessible-data-vis", "images", "table.html")
)
