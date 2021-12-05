# Filter Values -- Avoid SQL Injection
# Samuel Adamson

from datetime import datetime

# FILTERS --

# Ensure Integer
# PARAMS: Value, Nullable Status
# RETURN: Filtered Value (Integer)
def db_integer(value, nullable=False):
    return int(value) if not nullable or value != None else None

# Ensure Datetime
# PARAMS: Value, Nullable Status
# RETURN: Filtered Value (Datetime)
def db_datetime(value, nullable = False):
    return datetime.strptime(value, '%Y%m%d') if not nullable or value != None else None

# Ensure Timestamp (RETURN AS STRING)
# PARAMS: Value, Nullable Status
# RETURN: Filtered Value (Datetime)
def db_timestamp(value, nullable = False):
    return datetime.strftime(value, '%Y-%m-%d') if not nullable or value != None else None


# FORMATS --

# Format date ranges
# PARAMS: Date Range (Format: _YYYYMMDD_YYYYMMDD)
# RETURN: Date Range as String (Format: YYYY-MM-DD_YYYY-MM-DD)
def format_date_range(date_range):
    # Store as datetime, convert back to string in proper format
    date_str1 = datetime.strftime(db_datetime(date_range[1:9]), '%Y-%m-%d')
    date_str2 = datetime.strftime(db_datetime(date_range[10:]), '%Y-%m-%d')

    # Return concatenation
    return ('%s_%s' % (date_str1, date_str2))