# Query Covid Cases Data and Visualize
# Author: Samuel Adamson

# Import operations script
source("operations.r")
# Store Table ID
table_id <- "covid_cases"

# Columns in table for selection
col_date <- "date"
col_cases <- "case_count"


# Select COVID-19 cases data based on date
# PARAMS: Table ID
# RETURN: All rows in COVID-19 cases table 
select_all_covid_cases <- function(tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_cases, ", ",
        " from ", tbl,
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Select COVID-19 cases data based on date
# PARAMS: Date, Table ID
# RETURN: All rows in COVID-19 cases table 
select_covid_cases_by_date <- function(date, tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_trans, ", ", col_blocks,
        " from ", tbl, " where ", col_date, " = '", date, "'",  
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}