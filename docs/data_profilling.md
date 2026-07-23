# Data Profiling

## Overview

This document summarizes the initial exploration of the Olist Brazilian E-Commerce dataset before data cleaning and analysis.

The objective of this step is to:

- Understand the structure of each table
- Identify missing values and duplicate records
- Verify primary keys and relationships between tables
- Evaluate overall data quality before importing into PostgreSQL

---

## Dataset Summary

| Table | Rows | Columns | Missing Values | Duplicate Rows |
|------|------:|--------:|---------------:|---------------:|
| Customers | 99441 | 5 | 0 | 0 |
| Orders | 99441 | 8 | 4,908 | 0 |
| Order Items | 112650 | 7 | 0 | 0 |
| Products | 32951 | 9 | 2,448 | 0 |
| Sellers | 3095 | 4 | 0 | 0 |
| Payments | 103886 | 5 | 0 | 0 |
| Reviews | 99224 | 7 | 145,903 | 0 |

---

# Initial Observations

## Data Quality

### Missing Values

- Missing values are mainly found in the **Orders**, **Products**, and **Reviews** tables.
- The **Reviews** table contains the largest number of missing values, primarily in review comment fields.
- Timestamp fields in the Orders table also contain missing values, likely due to canceled or undelivered orders.

### Duplicate Records

- No fully duplicated rows were found in any table.

### Data Consistency

- All tables have consistent column names and data types.
- Further verification of primary keys and foreign keys is required before building the relational database.

## Potential Issues

- Missing timestamps may affect delivery time analysis.
- Missing product attributes may reduce the completeness of product-level analysis.
- Review comments contain a large number of missing values, limiting sentiment analysis.

## Next Steps

1. Verify primary keys and foreign keys.
2. Design the entity relationship diagram (ERD).
3. Import data into PostgreSQL.
4. Perform exploratory SQL analysis.
5. Clean and transform data for Power BI.