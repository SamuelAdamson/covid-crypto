# Standard Operations For tables
# Samuel Adamson

from authenticateGCloud import authenticate
from google.cloud import bigquery as bq

# Store authentication client
client = authenticate()


# Create Table in Bigquery
# PARAMS: Table ID, Schema
# RETURN: None
def create_table(table_id, schema):
    # Create table with designated id and schema
    table = bq.Table(table_id, schema=schema)
    table = client.create_table(table)

    # Print table creation confirmation
    print(f'Created Table: { table.table_id }')


# Delete Table from Bigquery
# PARAMS: Table ID
# RETURN: None
def delete_table(table_id):
    # Delete table, if table not found no exception thrown
    client.delete_table(table_id, not_found_ok=True)
    
    # Print table deletion confirmation
    print(f'Table Deleted: { table_id }')


# Insert Into Bigquery Table
# PARAMS: Table ID, Data File (JSON)
# RETURN: None
def insert(table_id, data_file):
    
    # Print table deletion confirmation
    print('Nothing')