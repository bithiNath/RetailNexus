# 🏪 RetailNexus-  Unified Sales, Customer & Product Analytics Hub

 
![Project Status](https://img.shields.io/badge/Status-Complete-brightgreen)
![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-316192?logo=postgresql)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)
![License](https://img.shields.io/badge/License-MIT-yellow)
 
---
 
## 📌 Project Overview
 
**RetailNexus** is an end-to-end data analytics project built on a retail sales dataset from Bangladesh. The project simulates a real-world business intelligence pipeline — starting from raw data cleaning in Python, structured storage in PostgreSQL, and finally an interactive multi-page dashboard in Power BI.
 
The goal is to give business stakeholders a single unified hub to monitor **sales performance**, **customer behavior**, **product trends**, and **financial health** — all in one place, with interactive filters.
 
> ⚠️ **Note:** The dataset used in this project is a dummy/synthetic dataset created for learning and portfolio purposes. It does not represent any real company or organization.
 
---
 
## 🎯 Business Questions Answered
 
- Which cities and store branches generate the most revenue?
- Which customer segments (age group, gender, membership tier) are most valuable?
- What are the top-selling and most-returned products?
- How do sales channels (In-Store, Online, Mobile App) compare?
- Does offering a discount actually improve profit margin?
- Which months and days of the week see the highest sales?
- How is revenue trending over time vs profit?
---


## 📊 Dashboard Preview
 
 > To explore each chart individually in detail, click **"View Detailed Charts"** or use the **"button"** at the top-right of the dashboard.

**View Detailed Charts :** Go to Files > dashboard > Retail_sales_Dashboard.pbix

<div align="center">
  <img src="dashboard/dashboard-screenshot.png" alt="Dashboard Preview" width="1100"/>
</div>

<br>


 
## 🛠️ Tech Stack
 
| Layer | Tool | Purpose |
|---|---|---|
| Data Cleaning | Python (Pandas, NumPy) | Raw data processing & transformation |
| Database | PostgreSQL 18 | Structured data storage |
| Visualization | Power BI Desktop | Interactive dashboard |
| IDE | VS Code | Development environment |
| Version Control | Git & GitHub | Project management |
 
---
 
## 📁 Project Structure
 
```
RetailNexus/
│
├── data/
│   ├── raw/
│   │   └── retail_sales_data.csv          # Original unprocessed dataset
│   └── processed/
│       └── retail_sales_data_cleaned.csv       # Cleaned dataset ready for SQL import
│
├── notebook/
│   └── cleaned_retail_sales_data.ipynb         # Data cleaning notebook (Pandas)
│
├── sql/
│   └── retail_sales_analysis_queries.sql       # Table creation + all analysis queries
│
├── dashboard/
│   └── Retail_Sales_Dashboard.pbix              # Power BI dashboard file
│
├── requirements.txt
├── .gitignore
├── LICENSE
└── README.md
```
 
---

 
## ⚙️ Pipeline — How It Works
 
```
Raw CSV Data
     │
     ▼
Python (Pandas, Numpy) ── Data Cleaning & Transformation
     │
     ▼
PostgreSQL ── Structured Storage (retail_sales table)
     │
     ▼
Power BI ── Connect via PostgreSQL connector
     │
     ▼
Interactive Dashboard (5 pages)
```
 
---

 
## 📂 Dataset Information
 
| Property | Value |
|---|---|
| Source | Synthetic / Dummy Dataset |
| Total Rows | 1,963 transactions |
| Total Columns | 25 |
| Date Range | 2023 – 2024 |
| Geography | Bangladesh (Dhaka, Chittagong, Sylhet, Khulna, Rajshahi, etc.) |
| Categories | Electronics, Clothing, Food & Grocery, Home & Garden, Sports, Beauty |


## 🚀 How to Run This Project
 
### Prerequisites
- Python 3.x with `pandas`, `numpy` installed
- PostgreSQL 14+ installed
- Power BI Desktop (Windows only, free)
### Step 1 — Clone the Repository
```bash
git clone https://github.com/yourusername/RetailNexus.git
cd RetailNexus
```
 
### Step 2 — Set Up Python Environment
```bash
python -m venv venv
venv\Scripts\activate        # Windows
pip install pandas numpy jupyter
```
 
### Step 3 — Run the Cleaning Notebook
```bash
jupyter notebook notebook/cleaned_retail_sales_data.ipynb
```
Run all cells — cleaned CSV will be saved to `data/processed/`.
 
### Step 4 — Set Up PostgreSQL
```bash
psql -U postgres
```
```sql
CREATE DATABASE retailnexus_db;
\c retailnexus_db
```
Then run the SQL file:
```bash
psql -U postgres -d retailnexus_db -f sql/retail_sales_analysis_queries.sql
```
Then import the CSV:
```sql
\copy retail_sales FROM 'data/processed/retail_sales_data_cleaned.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL '');
```
 
### Step 5 — Open Power BI Dashboard
- Open `dashboard/RetailNexus_Dashboard.pbix` in Power BI Desktop
- Update the PostgreSQL connection with your credentials
- Click **Refresh** — all 5 pages will populate with your data
---
 
## 📸 Dashboard Screenshots
 
> Add your Power BI dashboard screenshots here after export.
 
| Page | Preview |
|---|---|
| Overview | `screenshots/01_overview.png` |
| Sales Deep Dive | `screenshots/02_sales.png` |
| Customer Intelligence | `screenshots/03_customers.png` |
| Product Performance | `screenshots/04_products.png` |
| Financial Health | `screenshots/05_financials.png` |
 
---
 
## 🔑 Key Insights (Sample)
 
- **Khulna** generates the highest revenue among all cities
- **Gold tier** members have the highest average spend per visit
- **Electronics** is the top revenue category but also has a higher return rate
- **In-Store** channel dominates sales volume
- Revenue peaks on **weekends** with Friday being the busiest day
- Transactions with a **discount event** show higher average order value but lower profit margin
---
 
 
## 👤 Author
 
**Your Name**
- GitHub: [@yourusername](https://github.com/yourusername)
- LinkedIn: [linkedin.com/in/yourprofile](https://linkedin.com/in/yourprofile)
---
 
## 📄 License
 
This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
 
---
 
## 🙏 Acknowledgements
 
- Dataset is synthetic and created purely for educational and portfolio purposes
- Built as part of a self-learning journey in Data Analytics
- Tools used: Python, PostgreSQL, Power BI Desktop, VS Code, Git
---
 
*⭐ If you found this project helpful, please consider giving it a star on GitHub!*
 


