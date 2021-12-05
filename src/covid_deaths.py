# Operations related to covid deaths table
#   CRUD: Create, Read Update, Delete
# Author: Samuel Adamson

from google.cloud import bigquery as bq
import operations as op 

# Store table ID
TABLE_ID = 'csci-260.covid_crypto.covid_deaths'
# Columns
COL_DATE = 'date'
COL_COUNT = 'death_count'


# Create Covid Cases Table
# PARAMS: Table ID
# RETURN: None
def create_covid_deaths_table(table_id=TABLE_ID):
    # Table schema
    schema = [
        bq.SchemaField(COL_DATE, 'DATE', mode='REQUIRED', description='Day of measurement'),
        bq.SchemaField(COL_COUNT, 'INTEGER', mode='REQUIRED', description='COVID-19 deaths count')
    ]

    # Create table
    op.create_table(table_id, schema)
    

# Delete Covid Cases Table
# PARAMS: Table ID
# RETURN: None
def delete_covid_deaths_table(table_id=TABLE_ID):
    # Delete table
    op.delete_table(table_id)


# Insert into Covid Deaths Table
# PARAMS: Table ID, Path to data file
# RETURN: None
def insert_covid_deaths_data(data_file, table_id=TABLE_ID):
    # Insert into table
    op.insert(table_id, data_file)