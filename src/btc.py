# Operations related to bitcoin table
#   CRUD: Create, Read Update, Delete
# Author: Samuel Adamson

from google.cloud import bigquery as bq
import operations as op 

# Store table ID
TABLE_ID = 'csci-260.covid_crypto.bitcoin'
# Columns
COL_DATE = 'date'
COL_TRANS = 'transactions'
COL_BLOCKS = 'blocks'


# Create Bitcoin Table
# PARAMS: Table ID
# RETURN: None
def create_bitcoin_table(table_id=TABLE_ID):
    # Table schema
    schema = [
        bq.SchemaField(COL_DATE, 'DATE', mode='REQUIRED', description='Day of measurement'),
        bq.SchemaField(COL_TRANS, 'INTEGER', mode='REQUIRED', description='Number of transactions'),
        bq.SchemaField(COL_BLOCKS, 'INTEGER', mode='REQUIRED', description='Number of blocks')
    ]
    
    # Create table
    op.create_table(table_id, schema)
    

# Delete Bitcoin Table
# PARAMS: Table ID
# RETURN: None
def delete_bitcoin_table(table_id=TABLE_ID):
    # Delete table
    op.delete_table(table_id)


# Insert into Bitcoin Table
# PARAMS: Table ID, Path to data file
# RETURN: None
def insert_bitcoin_data(data_file, table_id=TABLE_ID):
    # Insert into table
    op.insert(table_id, data_file)