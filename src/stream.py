#!/usr/bin/env python

# Stream data into bigquery, prep for visualizations
# Author: SamuelAdamson

import btc
import eth
import covid_cases as cc
import covid_deaths as cd


# Create bitcoin table, stream in bitcoin data
# PARAMS: Input File Path (JSON)
# RETURN: None
def bitcoin(data_file):
    # Create table
    btc.create_bitcoin_table()
    btc.insert_bitcoin_data(data_file)


# Create ethereum table, stream in ethereum data
# PARAMS: Input File Path (JSON)
# RETURN: None
def ethereum(data_file):
    # Create table
    eth.create_ethereum_table()
    eth.insert_ethereum_data(data_file)


# Create COVID-19 Cases table, stream in COVID-19 Cases data
# PARAMS: Input File Path (JSON)
# RETURN: None
def covid_cases(data_file):
    # Create table
    cc.create_covid_cases_table()
    cc.insert_covid_cases_data(data_file)


# Create COVID-19 Deaths table, stream in COVID-19 Deaths data
# PARAMS: Input File Path (JSON)
# RETURN: None
def covid_deaths(data_file):
    # Create table
    cd.create_covid_deaths_table()
    cd.insert_covid_deaths_data(data_file)


# On script call
if __name__ == '__main__':
    # Create and stream in all tables
    bitcoin('../data/cleaned_data/bitcoin.json')
    ethereum('../data/cleaned_data/ethereum.json')
    covid_cases('../data/cleaned_data/covid_cases.json')
    covid_deaths('../data/cleaned_data/covid_deaths.json')