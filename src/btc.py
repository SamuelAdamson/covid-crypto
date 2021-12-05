# Operations related to bitcoin table
#   CRUD: Create, Read Update, Delete
# Author: Samuel Adamson

from google.cloud import bigquery as bq
import operations as op 

# Store table ID
TABLE_ID = 'csci-260.covid_crypto.bitcoin'
# Columns
COL_DATES = 'date_range'
COL_TRANS = 'transaction_count'
COL_BLOCKS = 'block_count'


# Create Bitcoin Table
# PARAMS: Table ID
# RETURN: None
def create_bitcoin_table(table_id=TABLE_ID):
    # Table schema
    schema = [
        bq.SchemaField(COL_DATES, 'STRING', mode='REQUIRED'),
        bq.SchemaField(COL_TRANS, 'INTEGER', mode='REQUIRED'),
        bq.SchemaField(COL_BLOCKS, 'INTEGER', mode='REQUIRED')
    ]
    
    # Create table
    op.create_table(table_id, schema)
    

# Delete Bitcoin Table
# PARAMS: Table ID
# RETURN: None
def delete_bitcoin_table(table_id=TABLE_ID):
    # Delete table
    op.delete_table(table_id)