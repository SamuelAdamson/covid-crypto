# Standard Operations For tables
# Samuel Adamson

from authenticateGCloud import authenticate
from google.cloud import bigquery as bq
import json

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
    # Open file with json
    data_file = open(data_file)
    data = json.load(data_file)

    # store errors from insert job
    errors = client.insert_rows_json(table_id, data)

    # Check errors
    if errors == []:
        # Successfully added
        print('Rows have been inserted')
    else:
        # Errors on insertion
        print(f'ERROR INSERTING!: { errors }')