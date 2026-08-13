# Food Delivery Analytics

A comprehensive data analytics project that explores food delivery operations to track key business metrics, analyze order trends, delivery performance, and customer ordering behavior using Power BI.

---

## Project Overview

This project analyzes the Olist Brazilian E-Commerce dataset to evaluate business performance across orders, revenue, customer satisfaction, delivery operations, and payment behavior.

The project follows an end-to-end data analytics workflow, including data profiling, data quality validation, exploratory data analysis with Python, SQL-based business analysis, data modeling, and interactive dashboard development with Power BI.

### Key Objectives

- Analyze order volume and order status performance
- Identify revenue trends and high-performing product categories
- Evaluate customer satisfaction and review patterns
- Analyze delivery time and late-delivery performance
- Understand customer payment behavior
- Provide business insights and actionable recommendations
<img width="987" height="868" alt="ERD" src="https://github.com/user-attachments/assets/f681a271-b505-4d64-bc6a-68e96db13be0" />

---

## Repository Structure

```text
Food-Delivery-Analytics/
│
├── dashboard/
│   └── Food_Delivery_Dashboard.pbix
│
├── data/
│   ├── olist_customers_dataset.csv
|   └── olist_geolocation_dataset.csv
|   └── olist_order_items_dataset.csv
|   └── olist_order_payments_dataset.csv
|   └── olist_order_reviews_dataset.csv
|   └── olist_orders_dataset.csv
|   └── olist_products_dataset.csv
|   └── olist_sellers_dataset.csv
|   └── product_category_name_translation.csv
│
├── docs/
│   ├── schema.sql
│   └── business_questions.sql
│   └── data_dictionary.md
|   └── data_profilling.md
|   └── data_validation.md
|
├── images/
|   └── ERD.png
|   └── Sales Performance Overview.png
|   └── Operation & Payment.png
|
├── notebooks/
│   ├── 01-data-understanding.ipynb
│   └── 02-eda.ipynb
│
├── sql/
│   ├── 01_create_tables.sql
│   └── 02_data_validation.sql
|   └── 03_add_constraints.sql
|   └── 04_business_analysis.sql
|
├── README.md
```
---

## Dashboard Highlights

The Power BI dashboard consists of three pages covering overall business performance, customer satisfaction, and delivery & payment performance.

### 1. Overview

- **99.44K total orders** and approximately **R$16.01M in revenue** were generated during the observed period.
- The average order value (AOV) was approximately **R$161**.
- **São Paulo** was the city with the highest order volume, with approximately **15.5K orders**.
- **Beleza Saúde** generated the highest revenue among product categories, contributing approximately **R$1.26M**.
- The dashboard provides an overview of monthly order and revenue trends, order status distribution, geographic demand, and product category performance.

### 2. Customer Satisfaction

- The overall average customer rating was **4.09/5**.
- **5-star reviews accounted for 57.78%** of all reviews.
- Average ratings decreased as delivery time increased, from **4.43** for orders delivered within 0–5 days to **3.12** for orders delivered after 20 days.
- **CDs, DVDs & Musicais** had the highest average rating at approximately **4.6/5**, while **Seguros e Serviços** had the lowest at approximately **2.5/5**.
- The page allows customer satisfaction patterns to be explored by delivery time and product category.

### 3. Delivery & Payment Performance

- **96.48K orders were delivered**, with approximately **7.83K late deliveries**.
- The overall **late delivery rate was 8.11%**.
- **Roraima (RR)** had the longest average delivery time at approximately **29 days**, while **Paraíba (PB)** had the shortest at approximately **20 days**.
- **Credit card** was the dominant payment method, accounting for approximately **75.24%** of payment transactions.
- Credit card payments had the highest average payment value at approximately **R$163**, compared with approximately **R$66** for debit card payments.

 ## Key Findings

- Order volume and revenue showed an overall upward trend during the observed period.
- Business activity was geographically concentrated, with São Paulo accounting for the highest number of orders.
- Revenue was concentrated among a relatively small number of product categories, with Beleza Saúde being the top-performing category.
- Customer ratings were strongly associated with delivery time, with substantially lower ratings observed for orders taking more than 20 days to deliver.
- While the overall average rating was high at 4.09/5, certain product categories had considerably lower average ratings and may require further investigation.
- Approximately 8.11% of delivered orders arrived later than the estimated delivery date, highlighting an opportunity to improve delivery reliability.
- Credit cards dominated payment usage, while average payment values varied substantially across payment methods. 
<img width="1330" height="746" alt="image" src="https://github.com/user-attachments/assets/8f3a9c69-9d41-470d-8319-360e78e3266c" />
<img width="1330" height="746" alt="image" src="https://github.com/user-attachments/assets/284ae041-6c29-4bbd-a1c1-0211e7cf05a6" />
---


## Tech Stack

- **Python** — Data profiling, exploratory data analysis, outlier detection, correlation analysis, and visualization
- **Pandas / NumPy** — Data manipulation and analysis
- **Matplotlib / Seaborn** — Data visualization
- **PostgreSQL** — Data storage, validation, and business analysis
- **Power BI** — Data modeling, DAX measures, interactive dashboards, and visualization
- **Git / GitHub** — Version control and project documentation

---

## Getting Started

To explore and interact with the Power BI dashboard on your local machine:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/trung297/food-delivery-analytics.git
   ```

2. **Prerequisites:**
   Ensure you have [Microsoft Power BI Desktop] installed.

3. **Open the Dashboard:**
   Navigate to the `dashboard/` directory and open `Food_Delivery_Dashboard.pbix`.

4. **Interact with Filters:**
   Use the built-in slicers to filter data by date range, delivery zone, restaurant category, or order status.
