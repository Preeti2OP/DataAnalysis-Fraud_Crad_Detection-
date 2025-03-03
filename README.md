# **Card Transaction Data Analysis using MySQL Workbench**

## **Project Overview**  
This project focuses on analyzing credit card transaction data to detect patterns and identify potential fraudulent transactions. The analysis is performed using **MySQL Workbench**, leveraging SQL queries to extract insights and trends from the dataset.

---

## **Dataset Description**  
The dataset used in this project contains records of credit card transactions with features describing the transaction's characteristics and a label indicating whether the transaction was fraudulent.

### **Key Columns**  
- **Distance from Home:** How far the transaction location is from the cardholder's home.
- **Distance from Last Transaction:** Distance from the location of the previous transaction.
- **Ratio to Median Purchase Price:** Purchase amount compared to the median price for the user.
- **Repeat Retailer:** Indicates if the transaction was at a previously visited retailer.
- **Used Chip:** Whether the card's chip was used during the transaction.
- **Used PIN Number:** Whether a PIN was used.
- **Online Order:** Whether the transaction occurred online.
- **Fraud:** Label indicating whether the transaction was fraudulent (1 = Fraud, 0 = Legitimate).

---

## **Project Workflow**

### 1. Data Import  
- The dataset (`card_transdata.csv`) is imported into **MySQL Workbench** using the **Table Data Import Wizard**.
- A new database schema (e.g., `fraud_detection`) and table (`card_transdata`) are created to store the data.

### 2. Data Analysis  
- SQL queries are written to explore the data, calculate summary statistics, and analyze trends related to fraudulent and legitimate transactions.
- Key analysis areas include:
    - Total transaction and fraud counts.
    - Online vs offline fraud rates.
    - Fraud rates based on chip and PIN usage.
    - Fraud patterns across different distance ranges.
    - Fraud trends related to repeat retailers.

### 3. Insights Generation  
- The analysis helps in identifying:
    - Common patterns in fraudulent transactions.
    - Factors that increase fraud risk.
    - Differences between online and in-store transactions.
    - Impact of chip and PIN usage on fraud rates.

---

## **Tools Used**  
- **MySQL Workbench** – For data import, SQL query execution, and result visualization.
- **CSV File Format** – For initial data storage and import.

---

## **Key Learnings**  
- Understanding fraud detection patterns using transactional data.
- Writing and optimizing SQL queries for analysis.
- Analyzing both categorical and numerical transaction attributes.
- Using SQL grouping and aggregation techniques for data summarization.

---

## **Conclusion**  
This project provides valuable insights into fraudulent transaction patterns, which can support the development of better fraud detection systems for financial institutions.

---

