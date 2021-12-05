# Operations related to covid deaths table
#   CRUD: Create, Read Update, Delete
# Author: Samuel Adamson

from google.cloud import bigquery as bq
import operations as op 

# Store table ID
TABLE_ID = 'csci-260.covid_crypto.covid_deaths'
# Columns
COL_DATE = 'date_range'
COL_COUNT = 'count'


# Create Covid Cases Table
# PARAMS: Table ID
# RETURN: None
def create_covid_deaths_table(table_id=TABLE_ID):
    # Table schema
    schema = [
        bq.SchemaField(COL_DATE, 'STRING', mode='REQUIRED', description='End of one week period'),
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