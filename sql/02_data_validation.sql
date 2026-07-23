SELECT COUNT(*) FROM raw.customers;
SELECT COUNT(*) FROM raw.orders;
SELECT COUNT(*) FROM raw.order_items;
SELECT COUNT(*) FROM raw.products;
SELECT COUNT(*) FROM raw.sellers;
SELECT COUNT(*) FROM raw.payments;
SELECT COUNT(*) FROM raw.reviews;

SELECT customer_id, COUNT(*)
from raw.customers c
group by customer_id
having COUNT(*) > 1;

SELECT order_id, COUNT(*)
from raw.orders o
group by order_id
having COUNT(*) > 1;

SELECT product_id, COUNT(*)
from raw.products p
group by product_id
having COUNT(*) > 1;

SELECT seller_id, COUNT(*)
from raw.sellers s
group by seller_id
having COUNT(*) > 1;

select order_id, order_item_id, COUNT(*)
from raw.order_items oi
group by order_id, order_item_id
having COUNT(*) > 1;

select order_id, payment_sequential, COUNT(*)
from raw.payments p
group by order_id, payment_sequential
having COUNT(*) > 1;

select review_id, order_id, COUNT(*)
from raw.reviews r
group by review_id, order_id
having COUNT(*) > 1;
