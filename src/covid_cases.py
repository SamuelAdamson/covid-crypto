# Operations related to covid cases table
#   CRUD: Create, Read Update, Delete
# Author: Samuel Adamson

from google.cloud import bigquery as bq
import operations as op 

# Store table ID
TABLE_ID = 'csci-260.covid_crypto.covid_cases'
# Columns
COL_DATE = 'date'
COL_COUNT = 'case_count'


# Create Covid Cases Table
# PARAMS: Table ID
# RETURN: None
def create_covid_cases_table(table_id=TABLE_ID):
    # Table schema
    schema = [
        bq.SchemaField(COL_DATE, 'DATE', mode='REQUIRED', description='Day of measurement'),
        bq.SchemaField(COL_COUNT, 'INTEGER', mode='REQUIRED', description='COVID-19 cases count')
    ]

    # Create table
    op.create_table(table_id, schema)
    

# Delete Covid Cases Table
# PARAMS: Table ID
# RETURN: None
def delete_covid_cases_table(table_id=TABLE_ID):
    # Delete table
    op.delete_table(table_id)


# Insert into Covid Cases Table
# PARAMS: Table ID, Path to data file
# RETURN: None
def insert_covid_cases_data(data_file, table_id=TABLE_ID):
    # Insert into table
    op.insert(table_id, data_file)