# Food Delivery Analytics

A comprehensive data analytics project that explores food delivery operations to track key business metrics, analyze order trends, delivery performance, and customer ordering behavior using Power BI.

---

## Project Overview

In the fast-paced food delivery industry, optimizing delivery times, tracking revenue growth, and understanding customer preferences are critical for operational efficiency. This project provides an end-to-end analytics solution designed to help business stakeholders and operations teams make data-driven decisions.

### Key Objectives
* **Track Core KPIs:** Monitor Total Revenue, Total Orders, Order Cancellation Rates, and Average Order Value (AOV).
* **Analyze Ordering Patterns:** Identify peak ordering hours, high-demand days of the week, and popular food categories.
* **Evaluate Delivery Performance:** Assess average delivery duration, courier efficiency, and service coverage.
* **Optimize Restaurant & Customer Insights:** Discover top-performing restaurants, customer retention trends, and ticket sizes.
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
│   └── Customer Satisfaction.png
│   └── Delivery & Payment Performance.png
|   └── ERD.png
|   └── Sales Performance Overview.png
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

* **Executive Summary:** High-level overview of revenue, order volume, active customers, and order completion rates.
* **Sales & Revenue Analysis:** Granular breakdown of sales performance across different timeframes, regions, and product categories.
* **Delivery & Logistics Metrics:** In-depth metrics on average dispatch time, transit duration, and courier fulfillment efficiency.
* **Customer & Menu Insights:** Identification of top-selling menu items, customer re-order rates, and order size distribution.
<img width="1330" height="750" alt="Sales Performance Overview" src="https://github.com/user-attachments/assets/778992fd-f31c-4822-824a-7ccbe37ad248" />
<img width="1326" height="748" alt="Customer Satisfaction" src="https://github.com/user-attachments/assets/c04c2ae0-4421-4fc2-bd72-dcfd5941fc9f" />
<img width="1322" height="739" alt="Delivery   Payment Performance" src="https://github.com/user-attachments/assets/421796a8-7f0c-444a-8e46-5638f8aff332" />
---

## 🛠️ Tech Stack & Tools

* **Power BI Desktop:** Data modeling, DAX measure creation, interactive report design, and visual storytelling.
* **Data Modeling:** Star schema architecture connecting Orders, Customers, Restaurants, Couriers, and Date dimension tables.
* **DAX (Data Analysis Expressions):** Custom measures for dynamic period-over-period growth, moving averages, and KPI targets.

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
