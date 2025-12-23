# Load libraries
library(dplyr)
library(ggplot2)

# Load data
sales <- read.csv("data/sales_data_sample.csv")

# Check data structure
str(sales)

# Summary statistics
summary(sales)

# Total sales by year
sales_by_year <- sales %>%
  group_by(YEAR_ID) %>%
  summarise(total_sales = sum(SALES))

print(sales_by_year)

# Plot total sales by year
ggplot(sales_by_year, aes(x = YEAR_ID, y = total_sales)) +
  geom_col() +
  labs(
    title = "Total Sales by Year",
    x = "Year",
    y = "Total Sales"
  )
