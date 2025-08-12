CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE transactions (
    txn_id INT PRIMARY KEY,
    user_id INT,
    category_id INT,
    amount DECIMAL(10,2),
    txn_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
