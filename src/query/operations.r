# Query operations
# Author: Samuel Adamson

# Load packages
library(DBI)           # Database interface
library(bigrquery)   # Bigquery connection


query <- function(sql) {
    # Authenticate w/ bigquery token
    bq_auth(path = "../../gcloud_keys/csci-260-d918715bbf2a.json")

    # Project, Dataset
    proj <- "csci-260"
    ds <- "covid_crypto"

    # Establsih connection with Bigquery
    con <- dbConnect(
        bigrquery::bigquery(),
        project = proj,
        dataset = ds
    )

    # Execute query
    result <- DBI::dbSendQuery(con, sql)
    result <- dbFetch(result, Inf)

    # Return result
    return(result)
}