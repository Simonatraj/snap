# Snap – CS50 SQL Problem Set

This repository contains my complete solutions to the **Snap** problem set from CS50’s Introduction to Databases with SQL.

## Overview

For this assignment, I worked with a fictional photo-messaging app database modeled after Snapchat. The project involved writing optimized SQL queries that leverage indexes to efficiently answer questions about user activity, message history, friend networks, and engagement. The focus is on querying, indexing, and performance optimization within a normalized relational schema.

## Files

- `snap.db` – Provided SQLite database
- `queries.sql` – Contains all SQL queries for the assignment tasks
- `README.md` – Project documentation

## ERD / Database Structure

The `snap.db` database design: https://cs50.harvard.edu/sql/psets/5/snap/#schema

Indexes are present on several columns to speed up query execution, such as user logins, message senders/recipients, and friendships.

## How to Use

1. Open the database in SQLite:
sqlite3 snap.db
2. Load or edit your solution file:
.read queries.sql
3. Run queries or views from `queries.sql` as needed. For example:
SELECT * FROM users WHERE last_login_date >= '2024-01-01';
4. Use `.schema` in SQLite for an overview of table structures and indexes.

## Notes

- All assignment queries and optimizations are contained in `queries.sql` in the order assigned.
- Queries are designed to use indexes for maximum performance, as required by the problem specification.
- You can check your queries’ performance by prepending `EXPLAIN QUERY PLAN` in SQLite.



