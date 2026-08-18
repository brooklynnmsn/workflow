library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
	geom_violin(alpha = 0.8, color = "white", trim = FALSE) +
	geom_boxplot(width = 0.12, color = "grey20", fill = "white", outlier.shape = NA) +
	scale_fill_brewer(palette = "Dark2") +
	labs(
		title = "The Price Distribution of Diamonds",
		subtitle = "Price varies across the five diamond cut categories",
		x = "Cut quality",
		y = "Price (USD)"
	) +
	theme_classic(base_size = 13) +
	theme(
		plot.title = element_text(face = "bold", size = 18),
		plot.subtitle = element_text(color = "grey40"),
		legend.position = "none"
	)

ggsave("diamonds-2.png", diamonds_plot, width = 9, height = 6, dpi = 300)