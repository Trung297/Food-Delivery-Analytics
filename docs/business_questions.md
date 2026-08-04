# Business Questions

## Business Context

FoodNow is a food delivery platform that connects customers with restaurants through an online ordering system. As the platform continues to grow, management requires a data-driven understanding of operational performance, customer behavior, restaurant performance, and delivery efficiency.

The analytics team has been assigned to build an interactive reporting solution to identify business opportunities, operational bottlenecks, and actionable insights that support strategic decision-making.

---

## Project Objective

The objective of this project is to analyze historical order data and answer key business questions related to:

- Revenue performance
- Customer purchasing behavior
- Restaurant performance
- Delivery efficiency
- Customer satisfaction
- Payment behavior

The findings will be presented through SQL analysis, Python exploratory data analysis (EDA), and an interactive Power BI dashboard.

---

# Business Questions & Insights

This document summarizes the key business questions, observations, and insights derived from the Olist E-commerce dataset.

---

## Order Performance

### 1. How many orders are placed each month?

**Observation**

- Monthly orders increased from **800 (Jan 2017)** to a peak of **7,544 (Nov 2017)**.
- Order volume remained above **6,000 orders** per month for most of 2018.
- The low counts in **Sep–Oct 2018** reflect incomplete data rather than reduced demand.

**Business Insight**

Order volume showed strong growth over time, suggesting increasing customer demand. The peak in November 2017 may indicate the impact of seasonal shopping events or successful promotional campaigns, while consistently high order volumes in 2018 demonstrate stable business performance.

---

### 2. What is the distribution of order statuses (delivered, canceled, etc.)?

**Observation**

- Delivered orders accounted for **97.02%** of total orders.
- Canceled orders represented **0.63%**, while unavailable orders accounted for **0.61%**.

**Business Insight**

The vast majority of orders were successfully delivered, indicating a high order fulfillment rate. However, canceled and unavailable orders represent potential sources of lost sales and customer dissatisfaction. Monitoring the causes of these orders could help identify opportunities to improve order fulfillment.

---

### 3. Which cities have the highest number of orders?

**Observation**

- **sao paulo** recorded the highest number of orders (**15540** orders).
- The top **2** cities contributed approximately **22.54%** of total orders.

**Business Insight**

Order demand is concentrated in a small number of major cities. These high-demand markets could be prioritized for inventory allocation, logistics capacity, and targeted marketing initiatives.

---

## Revenue

### 4. What is the total revenue generated over time?

**Observation**

- Revenue peaked in **11/2017** at **R$1,194,882**.
- Overall revenue showed an **upward** trend.

**Business Insight**

Revenue increased over the observed period, indicating overall business growth. Monthly revenue trends can also help identify periods of high demand and support sales planning and resource allocation.

---

### 5. What is the average order value?

**Observation**

- The average order value (AOV) was **R$161**.

**Business Insight**

The AOV provides a baseline for monitoring customer spending per order. Increasing AOV through strategies such as product bundling, cross-selling, or upselling could help increase revenue without relying solely on higher order volume.

---

### 6. Which product categories generate the highest revenue?

**Observation**

- **cama mesa banho** generated the highest revenue (**R$498,440**).
- The top **5** categories contributed **37.87%** of total revenue.

**Business Insight**

Revenue is relatively concentrated among the top-performing product categories. These categories could be prioritized for inventory availability, supplier management, and targeted marketing to maintain their contribution to overall revenue.

---

## Customer Satisfaction

### 7. What is the distribution of customer review scores?

**Observation**

- **5**-star reviews accounted for **57.78%** of all reviews.
- The average review score was **4.09**.

**Business Insight**

Overall customer satisfaction was relatively high, with the majority of customers giving positive ratings. However, the presence of lower-rated reviews suggests that a portion of customers experienced unsatisfactory service and should be investigated to identify potential issues related to delivery, product quality, or order fulfillment.

---

### 8. Does delivery time affect customer ratings?

**Observation**

- Orders delivered within the first **5** days received an average rating of **4.43**.
- Orders delivered after **20** days received an average rating of **3.12**.

**Business Insight**

Longer delivery times are associated with lower customer ratings, highlighting the importance of reliable and efficient delivery operations.

---

### 9. Which product categories receive the highest and lowest average ratings?

**Observation**

- Highest-rated category: **cds dvds musicais** (**4.64** stars).
- Lowest-rated category: **seguros e servicos** (**2.5** stars).

**Business Insight**

Significant differences in average ratings across product categories suggest that customer satisfaction varies by category. Low-rated categories should be further investigated to identify potential issues related to product quality, service, or fulfillment.

---

## Delivery Performance

### 10. What is the average delivery time?

**Observation**

- The average delivery time was **12** days.

**Business Insight**

Delivery time is an important logistics KPI for monitoring fulfillment performance. Reducing delivery time while maintaining reliable fulfillment could contribute to a better customer experience.

---

### 11. How often are orders delivered later than the estimated delivery date?

**Observation**

- Delivered orders: **96,5k**
- Late deliveries: **7.83k**
- Late delivery rate: **8.11%**

**Business Insight**

Approximately 1 in 12 delivered orders arrived later than the estimated delivery date. Monitoring late deliveries can help identify logistics bottlenecks and improve on-time delivery performance.

---

### 12. Which states have the longest average delivery time?

**Observation**

- Longest average delivery time: **Roraima(RR)** (**29** days).
- Shortest average delivery time: **Paraíba(PB)** (**20** days).

**Business Insight**

Delivery times vary across states, with northern regions such as Roraima experiencing longer average delivery times. Regional differences may indicate opportunities to investigate logistics capacity, transportation routes, and fulfillment performance.

---

## Payment Behavior

### 13. Which payment methods are most frequently used?

**Observation**

- **credit card** was the most frequently used payment method, accounting for **75.24%** of all transactions.
- **debit card** was the least frequently used payment method.

**Business Insight**

Credit card is the dominant payment method in the dataset. Understanding payment preferences can help maintain a smooth checkout experience and ensure adequate support for commonly used payment methods.

---

### 14. How does payment value vary across payment methods?

**Observation**

- **credit card** had the highest average payment value (**R$163.32**).
- **debit card** had the lowest average payment value (**R$65.7**).

**Business Insight**

Average payment value varies considerably across payment methods, suggesting differences in purchasing patterns among customers using different payment methods. These differences can help inform payment and customer segmentation strategies.