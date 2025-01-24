# Run this to load all necessary libraries
library(tidyverse)
# install.packages("palmerpenguins") 
# Run this if you can't load the palmerpenguins library 
library(palmerpenguins)
pgs <- penguins %>% drop_na
head(pgs)

pgs %>% 
  ggplot() +
  geom_point(aes(x = bill_length_mm, y = bill_depth_mm, color = species),
             size = 1, alpha = 0.8) +
  labs(x = "Bill Length (in mm)",
       y = "Bill Depth (in mm)",
       color = "Species")
