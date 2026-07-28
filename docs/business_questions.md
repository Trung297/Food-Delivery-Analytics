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

A high delivery success rate reflects efficient order fulfillment. Monitoring canceled and unavailable orders can help reduce revenue loss and improve customer experience.

---

### 3. Which cities have the highest number of orders?

**Observation**

- **sao paulo** recorded the highest number of orders (**15540** orders).
- The top **2** cities contributed approximately **22.54%** of total orders.

**Business Insight**

High-demand cities should be prioritized for inventory allocation, warehouse planning, and localized marketing initiatives.

---

## Revenue

### 4. What is the total revenue generated over time?

**Observation**

- Revenue peaked in **11/2017** at **R$1,153,528**.
- Overall revenue showed an **(upward / downward / stable)** trend.

**Business Insight**

Revenue trends provide a clear view of business performance and can be used to evaluate seasonal demand and promotional effectiveness.

---

### 5. What is the average order value?

**Observation**

- The average order value (AOV) was **R$______**.

**Business Insight**

Increasing AOV through product bundles, cross-selling, or upselling can improve revenue without increasing the number of orders.

---

### 6. Which product categories generate the highest revenue?

**Observation**

- **______** generated the highest revenue (**R$______**).
- The top **_____** categories contributed **______%** of total revenue.

**Business Insight**

High-revenue product categories should receive greater attention in inventory planning, supplier management, and promotional campaigns.

---

## Customer Satisfaction

### 7. What is the distribution of customer review scores?

**Observation**

- **_____**-star reviews accounted for **______%** of all reviews.
- The average review score was **______**.

**Business Insight**

Customer reviews are concentrated in higher ratings, indicating generally positive customer satisfaction. Lower ratings should be further investigated.

---

### 8. Does delivery time affect customer ratings?

**Observation**

- Orders delivered within **______** days received an average rating of **______**.
- Orders delivered after **______** days received an average rating of **______**.

**Business Insight**

Longer delivery times are associated with lower customer ratings, highlighting the importance of efficient logistics operations.

---

### 9. Which product categories receive the highest and lowest average ratings?

**Observation**

- Highest-rated category: **______** (**______** stars).
- Lowest-rated category: **______** (**______** stars).

**Business Insight**

Product categories with consistently lower ratings should be reviewed to identify potential issues related to product quality or customer experience.

---

## Delivery Performance

### 10. What is the average delivery time?

**Observation**

- The average delivery time was **______** days.

**Business Insight**

Average delivery time is a key logistics KPI. Improving delivery speed can enhance customer satisfaction and increase positive reviews.

---

### 11. How often are orders delivered later than the estimated delivery date?

**Observation**

- Delivered orders: **______**
- Late deliveries: **______**
- Late delivery rate: **______%**

**Business Insight**

Monitoring late deliveries helps evaluate logistics reliability and identify opportunities to improve on-time delivery performance.

---

### 12. Which states have the longest average delivery time?

**Observation**

- Longest average delivery time: **______** (**______** days).
- Shortest average delivery time: **______** (**______** days).

**Business Insight**

Delivery performance varies across states, suggesting opportunities to optimize logistics operations in regions with longer delivery times.

---

## Payment Behavior

### 13. Which payment methods are most frequently used?

**Observation**

- **______** was the most frequently used payment method, accounting for **______%** of all transactions.
- **______** was the least frequently used payment method.

**Business Insight**

Understanding customer payment preferences helps businesses prioritize payment optimization and improve the checkout experience.

---

### 14. How does payment value vary across payment methods?

**Observation**

- **______** had the highest average payment value (**R$______**).
- **______** had the lowest average payment value (**R$______**).

**Business Insight**

Differences in average payment values across payment methods may reflect varying customer purchasing behaviors and can support payment-related marketing strategies.