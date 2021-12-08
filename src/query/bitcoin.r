# Query Bitcoin Data and Visualize
# Author: Samuel Adamson

# Import operations script
source("operations.r")
# Store Table ID
table_id <- "bitcoin"

# Columns in table for selection
col_date <- "date"
col_trans <- "transactions"
col_blocks <- "blocks"


# Select bitcoin data based on date
# PARAMS: Table ID
# RETURN: All rows in bitcoin table 
select_all_btc <- function(tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_trans, ", ", col_blocks,
        " from ", tbl,
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Select bitcoin data based on date
# PARAMS: Date, Table ID
# RETURN: All rows in bitcoin table 
select_btc_by_date <- function(date, tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_trans, ", ", col_blocks,
        " from ", tbl, " where ", col_date, " = '", date, "'",  
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}