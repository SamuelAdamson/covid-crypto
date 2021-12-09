# Query operations
# Author: Samuel Adamson

# Load packages
library(DBI)         # Database interface
library(bigrquery)   # Bigquery connection
library(ggplot2)     # Plotting library
library(ggpubr)      # Arranging Plots On A Single Page


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

plot_crypto <- function(data, file_name, title) {
    # Set dark theme
    theme_set(theme_minimal())
    theme_update(plot.background=element_rect(fill="grey21"))

    # Convert data (tibble) to dataframe
    df <- as.data.frame(data)

    # Create plot, designate x, y axis
    fig_blocks <- ggplot(data=df, aes(x=date)) +
        geom_line(aes(y=blocks), color="cyan3") +
        ggtitle(paste(title, "Blocks")) +
        xlab("Date") + ylab("Blocks Mined") +
        theme(text=element_text(color="grey93"),axis.text=element_text(color="grey93"),aspect.ratio=1/2)

    # Create plot, designate x, y axis
    fig_transactions <- ggplot(data=df, aes(x=date)) +
        geom_line(aes(y=transactions), color="yellowgreen") +
        ggtitle(paste(title, "Transactions")) +
        xlab("Date") + ylab("Transactions Executed") +
        theme(text=element_text(color="grey93"),axis.text=element_text(color="grey93"),aspect.ratio=1/2)

    # Arrange in line
    fig <- ggarrange(fig_blocks,fig_transactions,ncol=1,nrow=2)

    # Save figure
    ggsave(file_name, fig, width=8, height=8)
    # Log plotting message
    print(paste(title, "data plotted!"))
}

plot_covid <- function(data, file_name, title, yCol, yLbl) {
    # Set dark theme
    theme_set(theme_minimal())
    theme_update(plot.background=element_rect(fill="grey21"))

    # Convert data (tibble) to dataframe
    df <- as.data.frame(data)

    # Create plot, designate x, y axis
    fig <- ggplot(data=df, aes(x=date)) +
        geom_line(aes_string(y=yCol), color="cyan4") +
        ggtitle(title) +
        xlab("Date") + ylab(yLbl) +
        theme(text=element_text(color="grey93"),axis.text=element_text(color="grey93"),aspect.ratio=1/2)

    # Save figure
    ggsave(file_name, fig, width=8, height=4)
    # Log plotting message
    print(paste(title, "data plotted!"))
}