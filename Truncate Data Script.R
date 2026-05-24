library(dplyr)

data <- read.csv("ppauto_pos98-07 (1).csv")

company_data <- data %>%
  filter(GRCODE == 43)

evaluation_year <- 2007

truncated_data <- company_data %>%
  filter(DevelopmentYear <= evaluation_year)

write.csv(truncated_data, "truncated_auto_data.csv", row.names = FALSE)

