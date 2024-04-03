# Load necessary libraries
library(ggplot2)

# Plot the graph
ggplot(simulated_data, aes(x = Year, y = Cancer_Deaths, color = Hospital)) +
  geom_line() +
  labs(x = "Year",
       y = "Number of Cancer Deaths",
       title = "Trend of Cancer Deaths by Hospital") +
  theme_minimal()
