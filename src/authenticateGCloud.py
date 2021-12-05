# Explicitly authenticate client for bigquery
# Author: Samuel Adamson

from google.cloud import bigquery

def authenticate():
    # Create new client with authentication from service account
    authClient = bigquery.Client.from_service_account_json(
        '../gcloud_keys/csci-260-d918715bbf2a.json')

    # Return authenticated client
    return authClient
