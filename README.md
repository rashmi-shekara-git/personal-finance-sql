# Personal Finance Tracker – SQL Project

This project simulates a basic personal finance tracking system using SQL. It includes users, expense categories, and transaction records with reporting queries.

## Technologies Used
- SQL (runs on PostgreSQL, MySQL, or SQLite)
- Sample data inserted via script

## Features
- Track expenses by user and category
- Generate monthly and category-based reports
- Easy to extend or integrate with other tools

## Folder Structure
- `sql/create_tables.sql` – table definitions
- `sql/insert_data.sql` – inserts sample data
- `sql/analysis_queries.sql` – report queries
- `data/transactions_sample.csv` – optional data file

## How to Run
1. Open your SQL tool (e.g., DBeaver, pgAdmin, MySQL Workbench).
2. Run the `create_tables.sql`.
3. Run the `insert_data.sql`.
4. Execute queries from `analysis_queries.sql`.

## Sample Output
## Advanced Query Results

### Average Spending Per User

This query calculates the average transaction amount for each user, helping understand their typical spending behavior.

| User  | Average Spend ($) |
|-------|-------------------|
| Alice | 381.92            |
| Bob   | 80.00             |

---

### Monthly Spending Trends

This report shows how much each user spends month-by-month, useful for spotting trends or budgeting.

| User  | Year | Month | Monthly Spend ($) |
|-------|------|-------|-------------------|
| Alice | 2025 | 7     | 1145.75           |
| Bob   | 2025 | 7     | 160.00            |

---

### Top Spending Categories Per User

This query lists the spending per category for each user, ordered by highest spend first.

| User  | Category      | Total Spent ($) |
|-------|---------------|-----------------|
| Alice | Rent          | 950.00          |
| Alice | Groceries     | 120.50          |
| Alice | Utilities     | 75.25           |
| Bob   | Groceries     | 110.00          |
| Bob   | Entertainment | 50.00           |


