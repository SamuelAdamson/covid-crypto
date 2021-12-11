#!/usr/bin/env Rscript

# Evaluations and joined queries
# Author: Samuel Adamson

# Library for string interpolation
library("stringr")

source("operations.r")
source("covid_cases.r")
source("covid_deaths.r")
source("bitcoin.r")
source("ethereum.r")


# Join covid cases (subtractive), covid deaths (subtractive),
# bitcoin transactions, ethereum transactions on date
# PARAMS: None
# Returns: Query Result
select_covid_crypto_join <- function() {
    # Store query
    sql <- str_interp(c(
        "select cc.${col_date}, cc.${col_cases}-coalesce(cc2.${col_cases},0) as cases, cd.${col_deaths}-coalesce(cd2.${col_deaths},0)as deaths, ",
        "btc.${col_trans_btc} as btc_transactions, eth.${col_trans_eth} as eth_transactions ",
        "from (((${table_cc_id} cc left outer join ${table_cc_id} cc2 on cc.${col_date} = cc2.${col_date}+1) ",
        "inner join (${table_cd_id} cd left outer join ${table_cd_id} cd2 on cd.${col_date} = cd2.${col_date}+1) ",
        "on cc.${col_date} = cd.${col_date}) ",
        "inner join ${table_btc_id} btc on cc.${col_date} = btc.${col_date}) ",
        "inner join ${table_eth_id} eth on cc.${col_date} = eth.${col_date}"
    ))

    # Store query result
    result <- query(sql)
    # Write result to csv
    write.table(result, "../../figs/joins/covid_crypto.csv", sep=",")

    # Return query result
    return(result)
}


# Join covid cases (subtractive), bitcoin transactions on date
# PARAMS: None
# Returns: Query Result
select_cases_btctrans_join <- function() {
    # Store query
    sql <- str_interp(c(
        "select cc.${col_date}, cc.${col_cases}-coalesce(cc2.${col_cases},0) as cases, ",
        "btc.${col_trans_btc} as btc_transactions, ",
        "from ((${table_cc_id} cc left outer join ${table_cc_id} cc2 on cc.${col_date} = cc2.${col_date}+1) ",
        "inner join ${table_btc_id} btc on cc.${col_date} = btc.${col_date}) "
    ))

    # Store query result
    result <- query(sql)
    # Write result to csv
    write.table(result, "../../figs/joins/cases_btctrans.csv", sep=",")

    # Return query result
    return(result)
}

# Plot covid cases (subtractive), bitcoin transactions
# PARAMS: Joined Data
# Returns: None
plot_cases_btctrans_join <- function(data) {
    # Set dark theme
    theme_set(theme_minimal())
    theme_update(plot.background=element_rect(fill="grey21"))

    # Convert data (tibble) to dataframe
    df <- as.data.frame(data)

    # Plot figure
    fig <- ggplot(data=df, aes(x=date)) +
        geom_line(aes(y=cases, color="COVID-19 Cases")) +
        geom_line(aes(y=btc_transactions, color="BTC Transactions")) +
        ggtitle("Bitcoin Transactions and COVID-19 Cases") +
        labs(x="Date",y="Count", color="Legend") +
        theme(text=element_text(color="grey93"),axis.text=element_text(color="grey93"),aspect.ratio=9/16)

    # Save figure
    ggsave("../../figs/joins/cases_btctrans.png", fig, width=16, height=9)
    # Log plotting message
    print("Data plotted!")
}

# Join covid cases (subtractive), ethereum transactions on date
# PARAMS: None
# Returns: Query Result
select_cases_ethtrans_join <- function() {
    # Store query
    sql <- str_interp(c(
        "select cc.${col_date}, cc.${col_cases}-coalesce(cc2.${col_cases},0) as cases, ",
        "eth.${col_trans_btc} as eth_transactions, ",
        "from ((${table_cc_id} cc left outer join ${table_cc_id} cc2 on cc.${col_date} = cc2.${col_date}+1) ",
        "inner join ${table_eth_id} eth on cc.${col_date} = eth.${col_date}) "
    ))

    # Store query result
    result <- query(sql)
    # Write result to csv
    write.table(result, "../../figs/joins/cases_ethtrans.csv", sep=",")

    # Return query result
    return(result)
}

# Plot covid cases (subtractive), ethereum transactions
# PARAMS: Joined Data
# Returns: None
plot_cases_ethtrans_join <- function(data) {
    # Set dark theme
    theme_set(theme_minimal())
    theme_update(plot.background=element_rect(fill="grey21"))

    # Convert data (tibble) to dataframe
    df <- as.data.frame(data)

    # Plot figure
    fig <- ggplot(data=df, aes(x=date)) +
        geom_line(aes(y=cases, color="COVID-19 Cases")) +
        geom_line(aes(y=eth_transactions, color="ETH Transactions")) +
        ggtitle("Ethereum Transactions and COVID-19 Cases") +
        labs(x="Date",y="Count", color="Legend") +
        theme(text=element_text(color="grey93"),axis.text=element_text(color="grey93"),aspect.ratio=9/16)

    # Save figure
    ggsave("../../figs/joins/cases_ethtrans.png", fig, width=16, height=9)
    # Log plotting message
    print("Data plotted!")
}


# Join covid deaths (subtractive), bitcoin blocks on date
# PARAMS: None
# Returns: Query Result
select_deaths_btcblocks_join <- function() {
    # Store query
    sql <- str_interp(c(
        "select cd.${col_date}, cd.${col_deaths}-coalesce(cd2.${col_deaths},0) as deaths, ",
        "btc.${col_blocks_btc} as btc_blocks, ",
        "from ((${table_cd_id} cd left outer join ${table_cd_id} cd2 on cd.${col_date} = cd2.${col_date}+1) ",
        "inner join ${table_btc_id} btc on cd.${col_date} = btc.${col_date}) "
    ))

    # Store query result
    result <- query(sql)
    # Write result to csv
    write.table(result, "../../figs/joins/deaths_btcblocks.csv", sep=",")

    # Return query result
    return(result)
}

# Plot covid deaths (subtractive), bitcoin blocks
# PARAMS: Joined Data
# Returns: None
plot_deaths_btcblocks_join <- function(data) {
    # Set dark theme
    theme_set(theme_minimal())
    theme_update(plot.background=element_rect(fill="grey21"))

    # Convert data (tibble) to dataframe
    df <- as.data.frame(data)

    # Plot figure
    fig <- ggplot(data=df, aes(x=date)) +
        geom_line(aes(y=deaths, color="COVID-19 Deaths")) +
        geom_line(aes(y=btc_blocks, color="BTC Blocks")) +
        ggtitle("Bitcoin Blocks and COVID-19 Deaths") +
        labs(x="Date",y="Count", color="Legend") +
        theme(text=element_text(color="grey93"),axis.text=element_text(color="grey93"),aspect.ratio=9/16)

    # Save figure
    ggsave("../../figs/joins/deaths_btcblocks.png", fig, width=16, height=9)
    # Log plotting message
    print("Data plotted!")
}

# Join covid deaths (subtractive), ethereum blocks on date
# PARAMS: None
# Returns: Query Result
select_deaths_ethblocks_join <- function() {
    # Store query
    sql <- str_interp(c(
        "select cd.${col_date}, cd.${col_deaths}-coalesce(cd2.${col_deaths},0) as deaths, ",
        "eth.${col_blocks_eth} as eth_blocks, ",
        "from ((${table_cd_id} cd left outer join ${table_cd_id} cd2 on cd.${col_date} = cd2.${col_date}+1) ",
        "inner join ${table_eth_id} eth on cd.${col_date} = eth.${col_date}) "
    ))

    # Store query result
    result <- query(sql)
    # Write result to csv
    write.table(result, "../../figs/joins/deaths_ethblocks.csv", sep=",")

    # Return query result
    return(result)
}

# Plot covid deaths (subtractive), ethereum blocks
# PARAMS: Joined Data
# Returns: None
plot_deaths_ethblocks_join <- function(data) {
    # Set dark theme
    theme_set(theme_minimal())
    theme_update(plot.background=element_rect(fill="grey21"))

    # Convert data (tibble) to dataframe
    df <- as.data.frame(data)

    # Plot figure
    fig <- ggplot(data=df, aes(x=date)) +
        geom_line(aes(y=deaths, color="COVID-19 Deaths")) +
        geom_line(aes(y=eth_blocks, color="ETH Blocks")) +
        ggtitle("Ethereum Blocks and COVID-19 Deaths") +
        labs(x="Date",y="Count", color="Legend") +
        theme(text=element_text(color="grey93"),axis.text=element_text(color="grey93"),aspect.ratio=9/16)

    # Save figure
    ggsave("../../figs/joins/deaths_ethblocks.png", fig, width=16, height=9)
    # Log plotting message
    print("Data plotted!")
}


# RUN COVID CRYPTO JOIN
# select_covid_crypto_join()

# COVID CASES VS BTC TRANS
# data1 <- select_cases_btctrans_join()
# plot_cases_btctrans_join(data1)

# COVID CASES VS ETH TRANS
# data2 <- select_cases_ethtrans_join()
# plot_cases_ethtrans_join(data2)

# COVID DEATHS VS BTC BLOCKS
# data3 <- select_deaths_btcblocks_join()
# plot_deaths_btcblocks_join(data3)

# COVID DEATHS VS ETH BLOCKS
# data4 <- select_deaths_ethblocks_join()
# plot_deaths_ethblocks_join(data4)