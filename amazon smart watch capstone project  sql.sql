-- Select the database to use
USE product_db;

-- Create the Products table if it does not exist
CREATE TABLE IF NOT EXISTS Products (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique identifier for each product
    Brand VARCHAR(50) NOT NULL,  -- Brand name of the product (not null)
    `Product Name` VARCHAR(200) NOT NULL,  -- Name of the product (not null)
    Description VARCHAR(300),  -- Description of the product
    Colour VARCHAR(100),  -- Colour of the product
    `Operating System` VARCHAR(100),  -- Operating system of the product (if applicable)
    Price DECIMAL(10, 2) NOT NULL,  -- Price of the product (not null)
    Discount DECIMAL(5, 2) DEFAULT 0.00 NOT NULL,  -- Discount percentage or amount (default 0)
    `Actual Price` DECIMAL(10, 2) NOT NULL,  -- Actual price before discount (not null)
    Rating FLOAT CHECK (Rating >= 0 AND Rating <= 5),  -- Product rating (0-5 scale)
    Reviews INT DEFAULT 0  -- Number of reviews (default 0)
);
