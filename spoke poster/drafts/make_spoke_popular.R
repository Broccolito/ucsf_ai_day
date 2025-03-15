library(lubridate)
library(ggplot2)
library(ggpubr)
library(readxl)

popular = read_excel("spoke_popular.xlsx")

plt = ggplot(popular, aes(x = Month)) +
  geom_line(aes(y = `Monthly visitors`, color = "Monthly Visitors"), size = 1) +
  geom_line(aes(y = `Cumulative Visitors` / max(`Cumulative Visitors`) * max(`Monthly visitors`), 
                color = "Cumulative Visitors"), size = 1) +
  scale_y_continuous(
    name = "Monthly Visitors",
    sec.axis = sec_axis(~ . * max(popular$`Cumulative Visitors`) / max(popular$`Monthly visitors`), 
                        name = "Cumulative Visitors")
  ) +
  scale_color_manual(values = c("Monthly Visitors" = "#154360", "Cumulative Visitors" = "#1ABC9C")) +
  labs(title = "",
       x = "Year",
       color = "") +
  theme_bw() +
  theme(legend.position = "bottom", text = element_text(size = 15))

ggsave(filename = "spoke_popularity.png", plot = plt, dpi = 1200, device = "png",
       width = 5, height = 5)
