
library(ggplot2)
library(tidyverse)

# read in data
dat <- read.csv(file = "C:/Users/rweber/Documents/MN Pop Data/est from graph.csv",
                sep = ",", na.strings = c("NA", "N/A", "n/a", "", " "))


dat <- pivot_longer(dat, cols = c("Births", "Deaths","Domestic.Migration","International.Migration"))


write.csv(dat, "C:/Users/rweber/Documents/MN Pop Data/est from graph_long.csv")


dat$name <- factor(dat$name, levels = c( "Deaths", "Births", "International.Migration", "Domestic.Migration" ))

ggplot(dat, aes(x = Year, y = value, fill = name)) +
  geom_col() +
  geom_line(aes(y = Net.Change), size = 1.2) +
  geom_text(x = 2020, y = 31000, label = "Net Population\nChange", size = 5) +
  coord_cartesian(clip = "off") +
  ylab("Population\nChange") +
  xlab("") +
  theme_minimal() +
  theme(legend.position = "top",
        axis.text.x = element_text(size = 14),
        axis.text.y = element_text(size = 14),
        legend.text = element_text(size = 12),
        plot.title = element_text(size = 20),
        plot.subtitle = element_text(size = 14),
        axis.title.y = element_text(size = 16, angle = 0),
        axis.title.x = element_text(size = 16)) +
  scale_y_continuous(breaks = c(-50000, -25000, 0, 25000, 50000, 75000)) +
  labs(fill = "") +
  scale_fill_manual(values = c("#527d03", "#A67F8E", "#0a5189", "#f38119"),
                    labels = c('Births', "Deaths", "Domestic Migration", "International Migration")) +
  ggtitle("Minnesota population growth sputters to halt",
          subtitle = "Declining immigration, birth rates marginally outpaces deaths")
