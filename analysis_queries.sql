-- Total spending per user
SELECT u.name, SUM(t.amount) AS total_spent
FROM users u
JOIN transactions t ON u.user_id = t.user_id
GROUP BY u.name;

-- Spending by category
SELECT c.category_name, SUM(t.amount) AS category_spend
FROM transactions t
JOIN categories c ON t.category_id = c.category_id
GROUP BY c.category_name
ORDER BY category_spend DESC;

-- Monthly spend report (optional: use DATE_FORMAT or EXTRACT depending on DB)
SELECT 
  EXTRACT(MONTH FROM txn_date) AS month,
  SUM(amount) AS total_spend
FROM transactions
GROUP BY month
ORDER BY month;

-- Average spending per user
SELECT u.name, ROUND(AVG(t.amount), 2) AS avg_spent
FROM users u
JOIN transactions t ON u.user_id = t.user_id
GROUP BY u.name;

-- User spending trends over time (monthly)
SELECT 
    u.name, 
    EXTRACT(YEAR FROM txn_date) AS year,
    EXTRACT(MONTH FROM txn_date) AS month,
    ROUND(SUM(t.amount), 2) AS monthly_spend
FROM users u
JOIN transactions t ON u.user_id = t.user_id
GROUP BY u.name, year, month
ORDER BY u.name, year, month;

-- Categories where user spends the most
SELECT 
    u.name, 
    c.category_name, 
    ROUND(SUM(t.amount), 2) AS total_spent
FROM users u
JOIN transactions t ON u.user_id = t.user_id
JOIN categories c ON t.category_id = c.category_id
GROUP BY u.name, c.category_name
ORDER BY u.name, total_spent DESC;
