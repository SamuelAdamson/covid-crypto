#!/usr/bin/env python

# Format curated data for insertion in created tables
# Author: Samuel Adamson

from datetime import datetime
import pandas as pd
import filter

# Input file names
IN_COVID_CASES = '../data/raw_data/covid_cases.csv'
IN_COVID_DEATHS = '../data/raw_data/covid_deaths.csv'
IN_BTC = '../data/raw_data/bitcoin.csv'
IN_ETH = '../data/raw_data/ethereum.csv'
# Output file names
OUT_COVID_CASES = '../data/cleaned_data/covid_cases.json'
OUT_COVID_DEATHS = '../data/cleaned_data/covid_deaths.json'
OUT_BTC = '../data/cleaned_data/bitcoin.json'
OUT_ETH = '../data/cleaned_data/ethereum.json'


# Cleans, formats, and outputs covid cases data
# PARAMS: Input File Path (CSV), Output File Path (JSON)
# RETURN: None
def clean_covid_cases(input=IN_COVID_CASES, output=OUT_COVID_CASES):
    # Read in CSV file to dataframe
    cc_df = pd.read_csv(input)
    # Transpose dataframe, transfer rows to columns
    cc_df = cc_df.transpose()
    cc_df.columns = ['case_count']

    # Make index column (date ranges) a standard column
    cc_df.insert(0, 'date_range', cc_df.index)
    
    # Format/Filter Date Range column (Datetimes)
    cc_df['date_range'] = cc_df['date_range'].apply(filter.format_date_range)
    # Filter Case Count column (Integer)
    cc_df['case_count'] = cc_df['case_count'].apply(filter.db_integer)

    # Convert to json (column name: entry)
    cc_df.to_json(output, 'records')


# Cleans, formats, and outputs covid deaths data
# PARAMS: Input File Path (CSV), Output File Path (JSON)
# RETURN: None
def clean_covid_deaths(input=IN_COVID_DEATHS, output=OUT_COVID_DEATHS):
    # Read in CSV file to dataframe
    cd_df = pd.read_csv(input)
    # Transpose dataframe, transfer rows to columns
    cd_df = cd_df.transpose()
    cd_df.columns = ['death_count']

    # Make index column (date ranges) a standard column
    cd_df.insert(0, 'date_range', cd_df.index)
    
    # Format/Filter Date Range column (Datetimes)
    cd_df['date_range'] = cd_df['date_range'].apply(filter.format_date_range)
    # Filter Case Count column (Integer)
    cd_df['death_count'] = cd_df['death_count'].apply(filter.db_integer)

    # Convert to json (column name: entry)
    cd_df.to_json(output, 'records')


# Cleans, formats, and outputs bitcoin data
# PARAMS: Input File Path (CSV), Output File Path (JSON)
# RETURN: None
def clean_bitcoin(input=IN_BTC, output=OUT_BTC):
    # Read in CSV file to dataframe
    btc_df = pd.read_csv(input)
    # Convert timestamp column to datetime and make index
    btc_df['timestamp'] = pd.to_datetime(btc_df['timestamp'])
    btc_df.set_index('timestamp')

    # Group by date range, 1 week
    btc_df = btc_df.groupby(pd.Grouper(key='timestamp', freq='1W')).sum()
    # Add timestamp for json string
    btc_df['date_range'] = btc_df.index.to_series()
    btc_df['date_range'] = btc_df['date_range'].apply(filter.db_timestamp)

    # Convert to json
    btc_df.to_json(output, 'records')


# Cleans, formats, and outputs ethereum data
# PARAMS: Input File Path (CSV), Output File Path (JSON)
# RETURN: None
def clean_ethereum(input=IN_ETH, output=OUT_ETH):
    # Read in CSV file to dataframe
    eth_df = pd.read_csv(input)
    # Convert timestamp column to datetime and make index
    eth_df['timestamp'] = pd.to_datetime(eth_df['timestamp'])
    eth_df.set_index('timestamp')

    # Group by date range, 1 week
    eth_df = eth_df.groupby(pd.Grouper(key='timestamp', freq='1W')).sum()
    # Add timestamp for json string
    eth_df['date_range'] = eth_df.index.to_series()
    eth_df['date_range'] = eth_df['date_range'].apply(filter.db_timestamp)

    # Convert to json
    eth_df.to_json(output, 'records')


if __name__ == '__main__':

    # Clean, format, and store data in output directory
    # clean_covid_cases()
    # clean_covid_deaths()
    # clean_bitcoin()
    clean_ethereum()