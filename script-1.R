total <- sum(1:10)
print(total)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
	geom_point(alpha = 0.25, size = 1.2) +
	scale_color_brewer(palette = "Set2") +
	labs(
		title = "How Diamond Size Shapes Price",
		subtitle = "Diamonds data set from ggplot2",
		x = "Carat",
		y = "Price (USD)",
		color = "Clarity"
	) +
	theme_minimal(base_size = 13) +
	theme(
		plot.title = element_text(face = "bold", size = 18),
		plot.subtitle = element_text(color = "grey40"),
		legend.position = "bottom",
		panel.grid.minor = element_blank()
	)

ggsave("diamonds-1.png", diamonds_plot, width = 9, height = 6, dpi = 300)