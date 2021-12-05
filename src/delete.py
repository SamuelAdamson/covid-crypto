#!/usr/bin/env python

# Deletes all tables
# Author: Samuel Adamson

import btc
import eth
import covid_cases as cc
import covid_deaths as cd

# Delete bitcoin table
# PARAMS: None
# RETURN: None
def bitcoin():
    # Delete table
    btc.delete_bitcoin_table()


# Delete ethereum table
# PARAMS: None 
# RETURN: None
def ethereum():
    # Delete table
    eth.delete_ethereum_table()


# Delete COVID-19 Cases table
# PARAMS: None
# RETURN: None
def covid_cases():
    # Delete table
    cc.delete_covid_cases_table()


# Delete COVID-19 Deaths table
# PARAMS: None
# RETURN: None
def covid_deaths():
    # Delete table
    cd.delete_covid_deaths_table()


# On script call
if __name__ == '__main__':
    # Create and stream in all tables
    bitcoin()
    ethereum()
    covid_cases()
    covid_deaths()