# BANKING DATA ANALYSIS WITH SQL AND POWER-BI

![Banking Dashboard](https://github.com/cliffordnwanna/BANKING_DATA_ANALYSIS_WITH_SQL_AND_POWER-BI/raw/main/PowerBI_report/Dashboard%20Screenshot.jpg)


## Project Overview
This project demonstrates my proficiency with SQL and Power BI by analyzing a sample banking dataset. The dataset consists of two tables: **Customers** and **Transactions**, both designed to simulate real-world banking operations. Using SQL for database management and Power BI for data visualization, I have created a professional dashboard to derive actionable insights.

---

## Dataset Description

### **SQL Source**
The dataset was created and managed using SQL Server Management Studio (SSMS). It consists of the following tables:

#### **Customers Table**
This table contains demographic information about customers, with the following columns:
- **CustomerID**: Unique identifier for each customer.
- **Name**: Full name of the customer.
- **Age**: Age of the customer.
- **City**: The city where the customer resides.
- **AccountType**: Type of account held (e.g., Savings, Current).

#### **Transactions Table**
This table records financial transactions, with the following columns:
- **TransactionID**: Unique identifier for each transaction.
- **CustomerID**: Identifier linking the transaction to the respective customer.
- **TransactionDate**: Date of the transaction.
- **Amount**: Monetary value of the transaction.
- **TransactionType**: Type of transaction (e.g., Deposit, Withdrawal).

The `CustomerID` column acts as a foreign key, establishing a relationship between the two tables.

---

## Steps to Import Data into Power BI

### **Step 1: Set Up SQL Database**
1. Designed and created the `BankAnalytics` database in SSMS.
2. Populated the `Customers` and `Transactions` tables using SQL `INSERT` statements.

### **Step 2: Connect Power BI to SQL Server**
1. Opened **Power BI Desktop**.
2. Selected **Get Data** > **SQL Server**.
3. Entered the server name and database name (`BankAnalytics`) to connect.
4. Selected the `Customers` and `Transactions` tables for analysis.
5. Clicked **Load** to import the data into Power BI.

### **Step 3: Establish Relationships**
1. Navigated to the **Model view** in Power BI.
2. Verified the relationship between the `Customers` and `Transactions` tables (linked via `CustomerID`).

### **Step 4: Data Cleaning**
1. Checked and adjusted data types for columns (e.g., `TransactionDate` set as Date, `Amount` as Decimal).
2. Ensured no null values or duplicates existed.

---

## Challenges Encountered

1. **Database Creation Errors:** Initially, I encountered errors stating that the database and tables already existed. This was resolved by verifying the database using SQL queries and refreshing SSMS.
2. **Relationship Setup:** The tables had to be carefully linked via the `CustomerID` field to ensure accurate visualizations.
3. **Data Formatting:** Formatting issues with `TransactionDate` required attention to ensure proper visualization of time-based trends in Power BI.

---

## Key Visuals and Their Purpose

### **1. Customer Summary (Card Visual)**
- **Purpose:** To display the total number of customers in the dataset.
- **Details:** A single card visual showing the count of unique `CustomerID`s, providing a quick snapshot of the customer base.

### **2. Transaction Trends (Line Chart)**
- **Purpose:** To analyze transaction trends over time.
- **Details:**
  - **X-Axis:** TransactionDate.
  - **Y-Axis:** Sum of `Amount`.
  - **Insights:** Highlights peak transaction periods, seasonal trends, and overall financial activity.

### **3. Customer Age Distribution (Bar Chart)**
- **Purpose:** To understand the age demographics of customers.
- **Details:**
  - **X-Axis:** Age groups.
  - **Y-Axis:** Count of `CustomerID`s.
  - **Insights:** Identifies the most common age groups among customers.

### **4. City-Wise Transactions (Map Visual)**
- **Purpose:** To visualize transaction activity across different cities.
- **Details:**
  - **Location:** City.
  - **Size:** Total `Amount` of transactions.
  - **Insights:** Pinpoints cities with the highest financial activity.

### **5. Transaction Types (Pie Chart)**
- **Purpose:** To show the proportion of different transaction types (e.g., Deposits vs. Withdrawals).
- **Details:**
  - **Legend:** TransactionType.
  - **Values:** Sum of `Amount`.
  - **Insights:** Provides a clear breakdown of financial activity.

---

## Project Documentation

### **Saved Files**
1. **SQL Script:** Includes `CREATE`, `INSERT`, and `SELECT` statements for the `BankAnalytics` database.
2. **Power BI Report:** Saved as `BankAnalyticsReport.pbix`.
3. **Exported Dashboard:** Exported to PDF for easy sharing.


---

## Conclusion
This project demonstrates my ability to work with SQL and Power BI to analyze data effectively. By combining database management with powerful visualizations, I’ve created actionable insights that would be valuable for banking operations.


