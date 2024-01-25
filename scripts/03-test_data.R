#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####
covid_data <- read_csv("inputs/data/raw_data.csv") 
covid_data

distinct(covid_data,Age.Group)
distinct(covid_data,Neighbourhood.Name)

groupbyage <-
  covid_data |>
  group_by(Age.Group) |>
  summarise(n=n()) |>
  arrange(-n)
groupbyage

groupbydistrict <-
  covid_data |>
  group_by(Neighbourhood.Name) |>
  summarise(n=n()) |>
  arrange(-n)
groupbydistrict

ggplot(data = groupbyage, aes(x = Age.Group, y = n)) +
  geom_bar(stat="identity")


ggplot(data = head(groupbydistrict,10), aes(x = Neighbourhood.Name, y=n)) +
  geom_bar(stat="identity")


library(tidyverse)
library(gt)

covid_data


install.packages("quarto")




