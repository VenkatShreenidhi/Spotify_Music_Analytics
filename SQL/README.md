# Spotify Music Analytics ETL Pipeline

## Overview
This project implements an end-to-end ETL pipeline to ingest, transform, and load Spotify music analytics data (2015–2025) into a MySQL database for analytics and reporting.

The pipeline follows clean separation of concerns across Extract, Transform, and Load layers.

---

## Architecture
Raw CSV (Kaggle)
→ Extract (Python)
→ Transform (Pandas)
→ Load (MySQL via SQLAlchemy)
→ Analytics (SQL)

---

## Tech Stack
- Python
- Pandas
- SQLAlchemy
- MySQL
- Git

---

## ETL Steps

### Extract
- Reads raw Spotify CSV data
- Validates file presence
- No transformations applied

### Transform
- Standardizes column names
- Removes duplicates
- Handles missing critical fields
- Feature engineering:
  - Duration (ms → minutes)
  - Popularity buckets
  - Release year extraction
- Data quality validation

### Load
- Loads cleaned data into MySQL
- Uses SQLAlchemy engine
- Batch inserts for efficiency
- Idempotent loads

---

## SQL Validation & Insights
SQL queries used for:
- Row count validation
- Null and range checks
- Popularity trend analysis
- Explicit vs non-explicit track analysis

Queries are available in the `/sql` directory.

---

## Key Insights
- Majority of tracks fall into low-to-medium popularity buckets
- Explicit tracks have higher average popularity
- Track popularity distribution is highly skewed
- Release year trends show increasing variance post-2020

---

## How to Run
```bash
python -m src.extract
python -m src.transform
python -m src.load
