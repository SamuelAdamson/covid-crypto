# Filter Values -- Avoid SQL Injection
# Samuel Adamson

from datetime import datetime

# FILTERS --

# Ensure Integer
# PARAMS: Value, Nullable Status
# RETURN: Filtered Value (Integer)
def db_integer(value, nullable=False):
    return int(value) if not nullable or value != None else None

# Ensure Timestamp (RETURN AS STRING) -- specific to covid input data
# PARAMS: Value, Nullable Status
# RETURN: Filtered Value
def db_timestamp_covid(value, nullable = False):
    return datetime.strftime(datetime.strptime(value[1:], '%Y%m%d'), '%Y-%m-%d') if not nullable or value != None else None

# Ensure Timestamp (RETURN AS STRING) -- specific to crypto input data
# PARAMS: Value, Nullable Status
# RETURN: Filtered Value
def db_timestamp_crypto(value, nullable = False):
    return datetime.strftime(value, '%Y-%m-%d') if not nullable or value != None else None