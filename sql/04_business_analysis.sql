-- ==========================================================
-- Q1 Order Placed Each Month
-- ==========================================================

select date_trunc('month', order_purchase_timestamp) as date_month, count(*) as order_placed
from raw.orders
group by 1
order by 1;

-- ==========================================================
-- Q2 What is the distribution of order statuses (delivered, canceled, etc.)?
-- ==========================================================
select order_status, count(order_status) as status_dist
from raw.orders
group by 1
order by 2 desc;

-- ==========================================================
-- Q3 Which cities have the highest number of orders?
-- ==========================================================
select c.customer_city, count(o.*) as total_orders
from raw.customers c
join raw.orders o
on c.customer_id = o.customer_id
group by 1
order by 2 desc;

-- ==========================================================
-- Q4 What is the total revenue generated over time?
-- ==========================================================
select date_part('year', o.order_purchase_timestamp) as year, date_part('month', o.order_purchase_timestamp) as month, sum(p.payment_value)
from raw.orders o
join raw.payments p
on o.order_id = p.order_id
where order_status = 'delivered'
group by 1, 2
order by 1, 2;

-- ==========================================================
-- Q5  What is the average order value?
-- ==========================================================
with t1 as (select o.order_id, sum(p.payment_value) as order_value 
from raw.payments p
join raw.orders o
on o.order_id = p.order_id
group by 1)

select avg(t1.order_value)
from t1;

-- ==========================================================
-- Q6  Which product categories generate the highest revenue?
-- ==========================================================
select pr.product_category_name as categories, sum(oi.price) as revenue
from raw.products pr
join raw.order_items oi
on pr.product_id = oi.product_id
join raw.orders o
on o.order_id = oi.order_id
where order_status = 'delivered'
group by 1
order by 2 desc;

-- ==========================================================
-- Q7  What is the distribution of customer review scores?
-- ==========================================================
select review_score, count(*) as score_dist
from raw.reviews
group by 1
order by 2 desc;

-- ==========================================================
-- Q8  Does delivery time affect customer ratings?
-- ==========================================================
with t1 as (select r.review_score, (o.order_delivered_customer_date::date - o.order_purchase_timestamp::date) as delivery_time
from raw.reviews r
join raw.orders o
on r.order_id = o.order_id
where o.order_status = 'delivered' and o.order_delivered_customer_date is not null)

select case when t1.delivery_time <= 5 then '0-5 days'
when t1.delivery_time > 5 and t1.delivery_time <=10 then '6-10 days'
when t1.delivery_time > 10 and t1.delivery_time <=15 then '11-15 days'
when t1.delivery_time > 15 and t1.delivery_time <=20 then '16-20 days'
when t1.delivery_time > 20 then '>20 days' end as delivery_timespan, round(avg(t1.review_score),1)
from t1
group by 1
order by min(delivery_time)

-- ==========================================================
-- Q9  Which product categories receive the highest and lowest average ratings?
-- Window Functions
-- ==========================================================

with t1 as (select p.product_category_name, avg(review_score) as avg_score
from raw.products p
join raw.order_items oi
on p.product_id = oi.product_id
join raw.orders o
on o.order_id = oi.order_id
join raw.reviews r
on r.order_id = o.order_id
where o.order_status = 'delivered'
group by 1),

t2 as (select *, rank() over(order by avg_score) as lowest_score, rank() over(order by avg_score desc) as highest_score
from t1)

select product_category_name, round(avg_score,1)
from t2
where lowest_score = 1 or highest_score = 1

-- ==========================================================
-- Q10  What is the average delivery time?
-- ==========================================================
select round(avg(order_delivered_customer_date::date - order_purchase_timestamp::date),2) avg_delivery_time
from raw.orders
where order_status = 'delivered';

-- ==========================================================
-- Q11  How often are orders delivered later than the estimated delivery date?
-- ==========================================================
select count(*) as delivered_orders, 
sum(case when order_delivered_customer_date > order_estimated_delivery_date then 1 else 0 end) as late_orders,
round(sum(case when order_delivered_customer_date > order_estimated_delivery_date then 1 else 0 end) * 100.0 / count(*),2) as late_delivery_rate
from raw.orders
where order_status = 'delivered';

-- ==========================================================
-- Q12  Which states have the longest average delivery time?
-- ==========================================================
select c.customer_state, round(avg(o.order_delivered_customer_date::date - o.order_purchase_timestamp::date),1) as avg_delivery_time,
count(*) as total_orders
from raw.customers c
join raw.orders o
on c.customer_id = o.customer_id
where o.order_status = 'delivered' and o.order_delivered_customer_date is not null
group by 1
order by 2 desc;

-- ==========================================================
-- Q13  Which payment methods are most frequently used?
-- ==========================================================
select payment_type, count(*) as total_transactions
from raw.payments
group by 1
order by 2 desc;

-- ==========================================================
-- Q14  How does payment value vary across payment methods?
-- ==========================================================
select payment_type, count(*) as total_transactions, round(avg(payment_value),2) as avg_payment_value
from raw.payments
group by 1
order by 2 desc;