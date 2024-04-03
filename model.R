# Install and load rstanarm
install.packages("rstanarm")
library(rstanarm)

# Fit a negative binomial regression model
model <- stan_glm(Cancer_Deaths ~ Population_Density + Average_Age + Screening_Programs + (1|Hospital),
                  data = simulated_data,
                  family = neg_binomial_2)

# Summarize the model
summary(model)
