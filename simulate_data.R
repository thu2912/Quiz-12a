library(tibble)
library(dplyr)
library(ggplot2)


set.seed(42)  # Set seed for reproducibility

# Simulate hospital names
hospital_names <- c('Hospital A', 'Hospital B', 'Hospital C', 'Hospital D', 'Hospital E')

# Simulate years from 2004 to 2023
years <- seq(2004, 2023, by = 1)

# Simulate population density (persons per square kilometer)
population_density <- sample(500:5000, length(hospital_names), replace = TRUE)

# Simulate average age of patients admitted (years)
average_age <- sample(40:70, length(hospital_names), replace = TRUE)

# Simulate availability of cancer screening programs (binary)
screening_programs <- sample(0:1, length(hospital_names), replace = TRUE)

# Create tibble to store simulated data
simulated_data <- tibble(
  Hospital = rep(hospital_names, each = length(years)),
  Year = rep(years, times = length(hospital_names)),
  Population_Density = rep(population_density, each = length(years)),
  Average_Age = rep(average_age, each = length(years)),
  Screening_Programs = rep(screening_programs, each = length(years)),
  Cancer_Deaths = rpois(length(hospital_names) * length(years), 
                        lambda = 10*log(Population_Density) + 0.5*Average_Age + 5*Screening_Programs)
)


