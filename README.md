# 📊 Sales Performance Analysis

## 📌 Project Overview

**Sales Performance Analysis** is an end-to-end data analytics project designed to analyze sales data and generate meaningful business insights using **Python, SQL, and Power BI**.

The project uses a Superstore sales dataset containing information about orders, customers, products, categories, regions, customer segments, sales, and shipping. The raw dataset is cleaned and transformed using Python, analyzed using SQL and Exploratory Data Analysis (EDA), and finally presented through an interactive Power BI dashboard.

The primary goal of this project is to understand **sales performance, product performance, regional trends, customer segments, seasonal patterns, and profitability** and convert the findings into actionable business recommendations.

---

## 🎯 Project Objectives

The major objectives of this project are:

* Analyze the structure and characteristics of the sales dataset.
* Clean and preprocess raw sales data.
* Handle missing values, duplicates, and incorrect data types.
* Perform feature engineering to create additional analytical features.
* Analyze sales performance across different regions.
* Compare product categories and sub-categories.
* Identify top-performing and underperforming products.
* Analyze customer segment performance.
* Identify monthly, quarterly, yearly, and seasonal sales trends.
* Calculate important business KPIs.
* Use SQL for business-oriented data analysis.
* Perform Exploratory Data Analysis using Python.
* Create an interactive Power BI dashboard.
* Generate actionable insights and business recommendations.

---

## 🗂️ Dataset

The project uses a **Superstore sales dataset** containing approximately **9,800 records** and information related to orders, customers, products, regions, and sales.

### Important Dataset Columns

| Column          | Description                         |
| --------------- | ----------------------------------- |
| `row_id`        | Unique row identifier               |
| `order_id`      | Unique order identifier             |
| `order_date`    | Date on which the order was placed  |
| `ship_date`     | Date on which the order was shipped |
| `ship_mode`     | Shipping method used                |
| `customer_id`   | Unique customer identifier          |
| `customer_name` | Customer name                       |
| `segment`       | Customer segment                    |
| `country`       | Country of the customer             |
| `city`          | Customer city                       |
| `state`         | Customer state                      |
| `postal_code`   | Postal code                         |
| `region`        | Sales region                        |
| `product_id`    | Unique product identifier           |
| `category`      | Product category                    |
| `sub_category`  | Product sub-category                |
| `product_name`  | Product name                        |
| `sales`         | Sales/revenue generated             |

Additional features were created during the data preprocessing and feature engineering stage.

---

# 🔄 Project Workflow

```text
Raw Dataset
     ↓
Data Loading
     ↓
Data Cleaning & Preprocessing
     ↓
Feature Engineering
     ↓
Exploratory Data Analysis
     ↓
SQL Business Analysis
     ↓
KPI Calculation
     ↓
Power BI Visualization
     ↓
Business Insights
     ↓
Recommendations
```

---

# 🛠️ Technologies Used

### Programming & Data Analysis

* 🐍 Python
* Pandas
* NumPy
* Matplotlib
* Seaborn

### Database & Querying

* SQL
* PostgreSQL / MySQL

### Visualization

* Microsoft Power BI
* Power Query
* DAX

### Development Environment

* Jupyter Notebook
* VS Code
* GitHub

---

# 🧹 1. Data Cleaning & Preprocessing

The first stage of the project focuses on preparing the raw dataset for analysis.

The following preprocessing activities were performed:

* Loaded the CSV dataset using Pandas.
* Inspected dataset dimensions.
* Checked column names and data types.
* Identified missing values.
* Checked for duplicate records.
* Handled incorrect or inconsistent data types.
* Converted date columns into appropriate datetime format.
* Processed postal-code values.
* Verified numerical columns.
* Checked categorical variables.
* Prepared the dataset for further analysis.

Example:

```python
import pandas as pd

df = pd.read_csv("superstore_final_dataset.csv")

df.head()
df.shape
df.info()
df.isnull().sum()
df.duplicated().sum()
```

---

# ⚙️ 2. Feature Engineering

Additional features were created to make the dataset more useful for business analysis.

### Shipping Days

Shipping duration was calculated using order date and ship date.

```text
Shipping Days = Ship Date - Order Date
```

### Date-Based Features

The following features were created:

* Year
* Month
* Month Name
* Quarter
* Day
* Day of Week
* Year-Month
* Season

These features help analyze sales trends over different time periods.

### Profit Feature

A profit-related feature was also incorporated for profitability analysis.

These engineered features make it easier to analyze:

* Monthly sales
* Quarterly sales
* Seasonal performance
* Shipping performance
* Profitability
* Year-over-year trends

---

# 📊 3. Exploratory Data Analysis

Exploratory Data Analysis was performed using Python.

### Libraries Used

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

EDA was used to understand:

* Sales distribution
* Product performance
* Category performance
* Regional performance
* Customer segment contribution
* Monthly sales trends
* Seasonal patterns
* Shipping performance
* Top and bottom-performing products

### Major Analysis Areas

#### 🌎 Regional Analysis

Sales were compared across different regions to identify high-performing and low-performing areas.

#### 📦 Category Analysis

Sales performance was analyzed across major product categories and sub-categories.

#### 🏆 Product Analysis

Products were ranked based on sales performance to identify the strongest and weakest products.

#### 👥 Customer Segment Analysis

Sales contribution was analyzed across different customer segments.

#### 📅 Time-Series Analysis

Sales trends were analyzed by:

* Year
* Quarter
* Month
* Season

---

# 🗄️ 4. SQL Analysis

SQL was used to perform structured business analysis on the dataset.

The analysis includes queries for:

* Total sales
* Total orders
* Sales by region
* Sales by category
* Sales by sub-category
* Sales by customer segment
* Monthly sales
* Yearly sales
* Top products
* Bottom products
* Regional performance
* Category performance
* Customer contribution
* Sales trends
* Business KPIs

Example SQL query:

```sql
SELECT
    category,
    SUM(sales) AS total_sales
FROM customer
GROUP BY category
ORDER BY total_sales DESC;
```

Another example:

```sql
SELECT
    region,
    SUM(sales) AS total_sales
FROM customer
GROUP BY region
ORDER BY total_sales DESC;
```

SQL helped demonstrate how business questions can be converted into structured analytical queries.

---

# 📈 5. Power BI Dashboard

An interactive **Sales Performance Dashboard** was developed using Microsoft Power BI.

The dashboard follows a **dark-themed professional design** and provides a consolidated view of the organization's sales performance.

## 📌 Key Performance Indicators

The dashboard includes important KPIs such as:

* 💰 Total Sales
* 📦 Total Orders
* 💵 Average Order Value
* 📈 Total Profit
* 📊 Profit Margin

These KPIs provide a quick overview of overall business performance.

---

# 📊 Dashboard Visualizations

The dashboard contains multiple visualizations for analyzing different aspects of sales.

### 1. Sales Trend Over Time

**Visual:** Line Chart

Shows how sales change over different months and years.

**Purpose:**

* Identify growth trends.
* Detect high-sales periods.
* Identify seasonal patterns.

---

### 2. Sales by Region

**Visual:** Bar/Column Chart

Compares sales performance across different geographical regions.

**Purpose:**

* Identify the strongest region.
* Identify regions requiring improvement.

---

### 3. Sales by Category

**Visual:** Column/Bar Chart

Shows the contribution of different product categories.

**Purpose:**

* Compare category performance.
* Identify major revenue-generating categories.

---

### 4. Sales by Customer Segment

**Visual:** Pie Chart

Displays the percentage contribution of each customer segment.

**Purpose:**

* Understand customer composition.
* Identify the segment contributing the highest sales.

---

### 5. Top-Performing Products

**Visual:** Horizontal Bar Chart

Displays the highest-performing products based on sales.

**Purpose:**

* Identify products generating significant revenue.
* Support inventory and marketing decisions.

---

### 6. Sales by Sub-Category

**Visual:** Bar/Column Chart

Compares performance across product sub-categories.

**Purpose:**

* Identify high-performing sub-categories.
* Detect weak product areas.

---

# 🎛️ Interactive Filters

The Power BI dashboard includes interactive slicers that allow users to filter the analysis.

Major filters include:

* 📅 Purchase/Order Month
* 📦 Product Category
* 👥 Customer Segment
* 🌎 Region
* 🚻 Other available categorical dimensions

Users can select different values and dynamically analyze the corresponding sales performance.

---

# 🔍 Key Business Questions

The project attempts to answer important business questions such as:

1. What is the total sales performance of the business?
2. Which region generates the highest sales?
3. Which product category performs best?
4. Which sub-category contributes the most revenue?
5. Which products are the top performers?
6. Which products have comparatively poor performance?
7. Which customer segment contributes the highest sales?
8. How do sales change over time?
9. Which months or seasons have higher sales?
10. What are the major factors affecting sales performance?
11. Which areas require improvement?
12. How can the business improve sales and profitability?

---

# 💡 Key Insights

The analysis is designed to identify insights such as:

* High-performing regions that contribute significantly to total sales.
* Product categories responsible for major revenue generation.
* Products that consistently perform well.
* Underperforming products that may require strategic attention.
* Customer segments contributing significantly to sales.
* Monthly and seasonal sales patterns.
* Changes in sales performance over time.
* Areas where business performance can be improved.

> **Note:** Exact numerical insights should be added after the final Power BI/EDA results are validated.

---

# 💼 Business Recommendations

Based on the analysis, the following types of strategies can be considered:

### 1. Focus on High-Performing Products

Increase availability and marketing of products that consistently generate high sales.

### 2. Improve Underperforming Products

Analyze pricing, customer demand, product positioning, and promotional strategies for low-performing products.

### 3. Strengthen High-Performing Regions

Allocate additional marketing and sales resources to regions with strong revenue potential.

### 4. Improve Weak Regions

Investigate customer preferences, pricing, competition, and distribution challenges in low-performing regions.

### 5. Use Seasonal Trends

Increase inventory and promotional activities during high-demand periods and optimize resources during low-demand periods.

---

# 📁 Project Structure

```text
Sales-Performance-Analysis/
│
├── 📂 Dataset/
│   └── superstore_final_dataset.csv
│
├── 📂 Python/
│   └── Sales_Performance_Analysis.ipynb
│
├── 📂 SQL/
│   └── Sales_Performance_Queries.sql
│
├── 📂 PowerBI/
│   └── Sales_Performance_Dashboard.pbix
│
├── 📂 Images/
│   └── dashboard.png
│
└── README.md
```

---

# 🚀 How to Run the Project

## Step 1: Clone the Repository

```bash
git clone https://github.com/yourusername/Sales-Performance-Analysis.git
```

## Step 2: Navigate to the Project

```bash
cd Sales-Performance-Analysis
```

## Step 3: Install Required Python Libraries

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

## Step 4: Open the Jupyter Notebook

```bash
jupyter notebook
```

Open:

```text
Sales_Performance_Analysis.ipynb
```

## Step 5: Run the Analysis

Run the notebook cells sequentially to perform:

```text
Data Loading
→ Data Cleaning
→ Feature Engineering
→ EDA
→ Visualization
```

## Step 6: SQL Analysis

Import the processed dataset into **PostgreSQL/MySQL** and execute the SQL queries available in:

```text
Sales_Performance_Queries.sql
```

## Step 7: Power BI Dashboard

Open:

```text
Sales_Performance_Dashboard.pbix
```

Refresh the dataset if required and use the available filters and slicers to explore the dashboard.

---

# 📌 Project Deliverables

The project includes:

* ✅ Cleaned Dataset
* ✅ Python Data Analysis Notebook
* ✅ Exploratory Data Analysis
* ✅ Feature Engineering
* ✅ SQL Business Queries
* ✅ KPI Analysis
* ✅ Interactive Power BI Dashboard
* ✅ Business Insights
* ✅ Business Recommendations
* ✅ Project Documentation

---

# 🎓 Skills Demonstrated

This project demonstrates practical knowledge of:

* Data Cleaning
* Data Preprocessing
* Feature Engineering
* Exploratory Data Analysis
* Statistical Analysis
* Python for Data Analytics
* Pandas
* NumPy
* Matplotlib
* Seaborn
* SQL
* PostgreSQL/MySQL
* Power BI
* Power Query
* DAX
* Data Visualization
* Business Intelligence
* KPI Analysis
* Business Problem Solving
* Data-Driven Decision Making

---

# 🔮 Future Improvements

The project can be further enhanced by adding:

* Sales forecasting using Machine Learning.
* Customer segmentation using K-Means clustering.
* Customer churn prediction.
* Automated Power BI data refresh.
* Advanced DAX measures.
* Profitability analysis at product level.
* Predictive analytics for future sales.
* Interactive drill-through reports.
* Web-based deployment using Streamlit.
* Automated reporting and alerts.

---

# 📌 Conclusion

The **Sales Performance Analysis** project demonstrates an end-to-end approach to solving a real-world business analytics problem. By integrating **Python, SQL, and Power BI**, raw sales data is transformed into structured information, analytical insights, and interactive visualizations.

Python provides the foundation for data cleaning, preprocessing, feature engineering, and exploratory analysis. SQL enables efficient business-oriented data extraction and analysis, while Power BI transforms the analytical results into an interactive dashboard that can be easily understood by business users.

The project helps identify important patterns in sales performance across **regions, products, categories, customer segments, and time periods**. The resulting insights can support better decisions related to sales strategy, product management, regional planning, inventory, and business growth.

Overall, this project demonstrates the practical application of modern **Data Analytics and Business Intelligence tools** to convert raw transactional data into meaningful and actionable business insights.

---

## 👨‍💻 Author

**Chintu Kumar**

**Aspiring Data Analyst | Python | SQL | Power BI**

### Skills

`Python` `SQL` `Power BI` `Excel` `Pandas` `NumPy` `Matplotlib` `Seaborn` `Data Analysis` `Data Visualization`

---

## ⭐ If you found this project useful

If you found this project helpful or interesting, consider giving the repository a ⭐ **Star** and connecting with me on GitHub and LinkedIn.
