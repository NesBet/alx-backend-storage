-- Creates a table named 'users' with the following attributes:
--   - id: integer, never null, auto increment, and primary key
--   - email: string (255 characters), never null, and unique
--   - name: string (255 characters)
--   - country: enum of countries ('US', 'CO', 'TN'), never null (default='US')
-- If the table already exists, the script will not fail and can be executed on any database.

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);
