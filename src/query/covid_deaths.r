#!/usr/bin/env Rscript

# Query Covid Deaths Data and Visualize
# Author: Samuel Adamson

# Import operations script
source("operations.r")
# Store Table ID
table_id <- "covid_deaths"

# Columns in table for selection
col_date <- "date"
col_cases <- "death_count"


# Select COVID-19 deaths data based on date
# PARAMS: Table ID
# RETURN: All rows in COVID-19 deaths table 
select_all_covid_deaths <- function(tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_cases, ", ",
        " from ", tbl,
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Select COVID-19 deaths data based on date
# PARAMS: Date, Table ID
# RETURN: All rows in COVID-19 deaths table 
select_covid_deaths_by_date <- function(date, tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_trans, ", ", col_blocks,
        " from ", tbl, " where ", col_date, " = '", date, "'",  
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Plot COVID-19 Deaths data
# PARAMS: Data from query result
# RETURN: None
plot_cd <- function(data) {
    # Call to external function
    plot_covid(data, "../../figs/covid_deaths.png", "COVID-19 Deaths", "death_count", "Death Count")
}


# DISPLAY SELECTIONS
# select_all_covid_deaths()
# select_covid_deaths_by_date("2021-09-13")

# PLOT COVID-19 CASES DATA
data <- select_all_covid_deaths()
plot_cd(data)