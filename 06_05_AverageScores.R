# Title:    Creating scale scores by averaging
# File:     06_06_AverageScores.R
# Project:  Complete Guide to R

# INSTALL AND LOAD PACKAGES ################################

# Install pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")

# pacman must already be installed; then load contributed
# packages (including pacman) with pacman
pacman::p_load(pacman, rio, tidyverse)
# pacman: for loading/unloading packages
# rio: for importing data
# tidyverse: for so many reasons

# INSTALL AND LOAD PACKAGES ################################

df <- import("data/StateData.xlsx") %>%
  as_tibble() %>%
  select(ST = state_code,
    museum:modernDance) %>%
  print()

# AVERAGE VARIABLES ########################################

# Calculate the mean of several rows after column selection
df %<>% 
  mutate(
    artsCrafts = rowMeans(df %>%   # Select data
      select(museum:modernDance),  # Select columns
      na.rm = TRUE)                # Remove missing values
  ) %>%
  arrange(desc(artsCrafts)) %>%    # Put in descending order
  print(n = Inf)                   # Display all rows

# Histogram of scores on artsCrafts
df %>%
  pull(artsCrafts) %>%
  hist(main = "Average Scores on artsCrafts")

# PACKAGES #################################################

# The package "psych" expands on this process and provide
# many more options

browseURL("https://CRAN.R-project.org/package=psych")

# CLEAN UP #################################################

# Clear data
rm(list = ls())  # Removes all objects from environment

# Clear packages
detach("package:datasets", unload = T)  # For base packages
p_unload(all)  # Remove all contributed packages

# Clear plots
graphics.off()  # Clears plots, closes all graphics devices

# Clear console
cat("\014")  # Mimics ctrl+L

# Clear mind :)
