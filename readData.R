library(tidyverse)

## Read data
data <- read.table("household_power_consumption.txt", 
                   sep = ";", 
                   header = TRUE, 
                   stringsAsFactors = FALSE)

## See the types of data
str(data)

## Convert to date format
data$Date <- lubridate::dmy(data$Date)

## Dates to filter
dates <- as.Date(c("2007-02-01", "2007-02-02"))

## Filter only rows requested
data <- data %>%
        filter(Date %in% dates) %>%
        mutate_at(c(3:8), as.numeric)