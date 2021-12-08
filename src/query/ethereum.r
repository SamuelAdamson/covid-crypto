# Query Ethereum Data and Visualize
# Author: Samuel Adamson

# Import operations script
source("operations.r")
# Store Table ID
table_id <- "ethereum"

# Columns in table for selection
col_date <- "date"
col_trans <- "transactions"
col_blocks <- "blocks"


# Select ethereum data based on date
# PARAMS: Table ID
# RETURN: All rows in ethereum table 
select_all_eth <- function(tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_trans, ", ", col_blocks,
        " from ", tbl,
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Select ethereum data based on date
# PARAMS: Date, Table ID
# RETURN: All rows in ethereum table 
select_btc_by_date <- function(date, tbl=table_id) {
    # Store query
    sql = paste(
        "select ", col_date, ", ", col_trans, ", ", col_blocks,
        " from ", tbl, " where ", col_date, " = '", date, "'",  
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}