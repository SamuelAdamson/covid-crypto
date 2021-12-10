#!/usr/bin/env Rscript

# Query Ethereum Data and Visualize
# Author: Samuel Adamson

# Import operations script
source("operations.r")
# Store Table ID
table_eth_id <- "ethereum"

# Columns in table for selection
col_date <- "date"
col_trans_eth <- "transactions"
col_blocks_eth <- "blocks"


# Select ethereum data based on date
# PARAMS: Table ID
# RETURN: All rows in ethereum table 
select_all_eth <- function(tbl=table_eth_id) {
    # Store query
    sql <- paste(
        "select ", col_date, ", ", col_trans_eth, ", ", col_blocks_eth,
        " from ", tbl,
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Select ethereum data based on date
# PARAMS: Date, Table ID
# RETURN: All rows in ethereum table 
select_eth_by_date <- function(date, tbl=table_eth_id) {
    # Store query
    sql <- paste(
        "select ", col_date, ", ", col_trans_eth, ", ", col_blocks_eth,
        " from ", tbl, " where ", col_date, " = '", date, "'",  
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Plot Ethereum data
# PARAMS: Data from query result
# RETURN: None
plot_eth <- function(data) {
    # Call to external function
    plot_crypto(data, "../../figs/ethereum.png", "Ethereum")
}


# DISPLAY SELECTIONS
# select_all_eth()
# select_eth_by_date("2021-09-13") 


# PLOT ETHEREUM DATA
# data <- select_all_eth()
# plot_eth(data)