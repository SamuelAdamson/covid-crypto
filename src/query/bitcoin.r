#!/usr/bin/env Rscript

# Query Bitcoin Data and Visualize
# Author: Samuel Adamson

# Import operations script
source("operations.r")
# Store Table ID
table_btc_id <- "bitcoin"

# Columns in table for selection
col_date <- "date"
col_trans_btc <- "transactions"
col_blocks_btc <- "blocks"


# Select bitcoin data based on date
# PARAMS: Table ID
# RETURN: All rows in bitcoin table 
select_all_btc <- function(tbl=table_btc_id) {
    # Store query
    sql <- paste(
        "select ", col_date, ", ", col_trans_btc, ", ", col_blocks_btc,
        " from ", tbl,
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Select bitcoin data based on date
# PARAMS: Date, Table ID
# RETURN: All rows in bitcoin table 
select_btc_by_date <- function(date, tbl=table_btc_id) {
    # Store query
    sql <- paste(
        "select ", col_date, ", ", col_trans_btc, ", ", col_blocks_btc,
        " from ", tbl, " where ", col_date, " = '", date, "'",  
    sep="")

    # Return result of query (tibble)
    return(query(sql))
}

# Plot Bitcoin data
# PARAMS: Data from query result
# RETURN: None
plot_btc <- function(data) {
    # Call to external function
    plot_crypto(data, "../../figs/bitcoin.png", "Bitcoin")
}


# DISPLAY SELECTIONS
# select_all_btc()
# select_btc_by_date("2021-09-13") 


# PLOT BITCOIN DATA
# data <- select_all_btc()
# plot_btc(data)