# Data Dictionary

## Project

Food Delivery Operations Analytics (Simulated from the Olist Brazilian E-Commerce Dataset)

---

## Business Mapping

To simulate a food delivery platform, several entities in the original dataset are mapped as follows:

| Original Entity | Business Interpretation |
|-----------------|------------------------|
| Seller | Restaurant |
| Product | Food Item |
| Customer | Customer |
| Order | Food Order |
| Freight Value | Delivery Fee |
| Review Score | Customer Rating |

---

# Table: Customers

### Description

Stores customer information and customer location.

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| customer_id | string | Unique customer identifier | Customer ID |
| customer_unique_id | string | Unique identifier across multiple purchases | Returning Customer ID |
| customer_zip_code_prefix | integer | ZIP code prefix | Customer Area |
| customer_city | string | Customer city | Customer City |
| customer_state | string | Customer state | Customer State |

---

# Table: Orders

### Description

Stores information about each food order.

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| order_id | string | Order identifier | Order ID |
| customer_id | string | Customer identifier | Customer ID |
| order_status | string | Current order status | Order Status |
| order_purchase_timestamp | datetime | Purchase time | Order Time |
| order_approved_at | datetime | Payment approved time | Payment Approved Time |
| order_delivered_carrier_date | datetime | Picked up by delivery partner | Rider Pickup Time |
| order_delivered_customer_date | datetime | Delivered successfully | Delivery Time |
| order_estimated_delivery_date | datetime | Estimated delivery time | Expected Delivery Time |

---

# Table: Order Items

### Description

Stores products included in each order.

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| order_id | string | Order identifier | Order ID |
| order_item_id | integer | Item sequence | Item Number |
| product_id | string | Product identifier | Food Item ID |
| seller_id | string | Seller identifier | Restaurant ID |
| shipping_limit_date | datetime | Shipping deadline | Preparation Deadline |
| price | float | Product price | Food Price |
| freight_value | float | Shipping fee | Delivery Fee |

---

# Table: Products

### Description

Stores product information.

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| product_id | string | Product identifier | Food Item ID |
| product_category_name | string | Product category | Food Category |
| product_name_lenght | integer | Name length | - |
| product_description_lenght | integer | Description length | - |
| product_photos_qty | integer | Number of photos | Number of Food Images |
| product_weight_g | float | Product weight | Food Weight |
| product_length_cm | float | Product length | Package Length |
| product_height_cm | float | Product height | Package Height |
| product_width_cm | float | Product width | Package Width |

---

# Table: Sellers

### Description

Stores restaurant information.

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| seller_id | string | Seller identifier | Restaurant ID |
| seller_zip_code_prefix | integer | ZIP code | Restaurant Area |
| seller_city | string | Restaurant City |
| seller_state | string | Restaurant State |

---

# Table: Payments

### Description

Stores payment information.

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| order_id | string | Order identifier | Order ID |
| payment_sequential | integer | Payment sequence | Payment Number |
| payment_type | string | Payment method | Payment Method |
| payment_installments | integer | Number of installments | Installments |
| payment_value | float | Payment amount | Total Payment |

---

# Table: Reviews

### Description

Stores customer feedback after order completion.

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| review_id | string | Review identifier | Review ID |
| order_id | string | Order identifier | Order ID |
| review_score | integer | Customer rating | Rating (1–5) |
| review_comment_title | string | Review title | Review Title |
| review_comment_message | string | Review content | Customer Comment |
| review_creation_date | datetime | Review creation date | Rating Date |
| review_answer_timestamp | datetime | Review submitted time | Submission Time |