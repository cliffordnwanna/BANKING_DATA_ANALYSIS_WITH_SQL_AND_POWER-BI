

-- Create Database
CREATE DATABASE BankAnalytics;
USE BankAnalytics;

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    City NVARCHAR(50),
    AccountType NVARCHAR(50)
);

-- Create Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    CustomerID INT,
    TransactionDate DATE,
    Amount DECIMAL(10, 2),
    TransactionType NVARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);






-- Insert Customers Data
INSERT INTO Customers VALUES 
    (1, 'Alice', 30, 'Lagos', 'Savings'),
    (2, 'Bob', 45, 'Abuja', 'Current'),
    (3, 'Charlie', 29, 'Port Harcourt', 'Savings'),
    (4, 'David', 34, 'Kano', 'Current'),
    (5, 'Eve', 28, 'Ibadan', 'Savings'),
    (6, 'Frank', 40, 'Enugu', 'Current'),
    (7, 'Grace', 37, 'Kaduna', 'Savings'),
    (8, 'Hannah', 25, 'Benin City', 'Current'),
    (9, 'Ian', 31, 'Jos', 'Savings'),
    (10, 'Jane', 50, 'Lagos', 'Current');

-- Insert Transactions Data
INSERT INTO Transactions VALUES
    (101, 1, '2025-01-01', 5000.00, 'Deposit'),
    (102, 1, '2025-01-02', 2000.00, 'Withdrawal'),
    (103, 2, '2025-01-03', 10000.00, 'Deposit'),
    (104, 3, '2025-01-04', 1500.00, 'Deposit'),
    (105, 4, '2025-01-05', 2000.00, 'Deposit'),
    (106, 5, '2025-01-06', 1000.00, 'Withdrawal'),
    (107, 6, '2025-01-07', 3000.00, 'Deposit'),
    (108, 7, '2025-01-08', 2500.00, 'Deposit'),
    (109, 8, '2025-01-09', 1500.00, 'Withdrawal'),
    (110, 9, '2025-01-10', 7000.00, 'Deposit'),
    (111, 10, '2025-01-11', 4000.00, 'Deposit'),
    (112, 1, '2025-01-12', 1000.00, 'Withdrawal'),
    (113, 2, '2025-01-13', 8000.00, 'Deposit'),
    (114, 3, '2025-01-14', 500.00, 'Withdrawal'),
    (115, 4, '2025-01-15', 6000.00, 'Deposit'),
    (116, 5, '2025-01-16', 3000.00, 'Deposit'),
    (117, 6, '2025-01-17', 1000.00, 'Withdrawal'),
    (118, 7, '2025-01-18', 4000.00, 'Deposit'),
    (119, 8, '2025-01-19', 2000.00, 'Withdrawal'),
    (120, 9, '2025-01-20', 3000.00, 'Deposit'),
    (121, 10, '2025-01-21', 500.00, 'Withdrawal');



-- Retrieve customers who have a "savings" account
	SELECT * FROM Customers WHERE AccountType = 'Savings';

-- List all transcations sorted by date
	SELECT * FROM Transactions ORDER BY TransactionDate;

--JOINS
--Combine customer and transaction data

SELECT c.Name, t.TransactionDate, t.Amount, t.TransactionType
FROM Customers c
INNER JOIN Transactions t ON c.CustomerID = t.CustomerID;

--AGGREGATIONS 
-- Calculate the total deposits for each customer

SELECT c.Name, SUM(t.Amount) AS TotalDeposits
FROM Customers c
INNER JOIN Transactions t ON c.CustomerID = t.CustomerID
WHERE t.TransactionType = 'Deposit'
GROUP BY c.Name;

--Find total deposits by customers

SELECT CustomerID, SUM(Amount) AS TotalDeposits
FROM Transactions
WHERE TransactionType = 'Deposit'
GROUP BY CustomerID;




--Advanced Queries
-- Identify Customers with withdrawals exceeding 2000 in total

SELECT c.Name, SUM(t.Amount) AS TotalWithdrawals
FROM Customers c
INNER JOIN Transactions t ON c.CustomerID = t.CustomerID
WHERE t.TransactionType = 'Withdrawal'
GROUP BY c.Name
HAVING SUM(t.Amount) > 2000;

--Identify customers with deposits above 5,000:
SELECT c.Name, SUM(t.Amount) AS TotalDeposits
FROM Customers c
INNER JOIN Transactions t ON c.CustomerID = t.CustomerID
WHERE t.TransactionType = 'Deposit'
GROUP BY c.Name
HAVING SUM(t.Amount) > 5000;


--Date-Based Analysis
-- find the total transaction for each date 

SELECT TransactionDate, COUNT(*) AS TotalTransactions
FROM Transactions
GROUP BY TransactionDate
ORDER BY TransactionDate;



