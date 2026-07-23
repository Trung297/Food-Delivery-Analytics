ALTER TABLE raw.orders
ADD CONSTRAINT orders_customer_fkey
FOREIGN KEY(customer_id)
REFERENCES raw.customers(customer_id);

ALTER TABLE raw.order_items
ADD CONSTRAINT items_product_fkey
FOREIGN KEY(product_id)
REFERENCES raw.products(product_id);

ALTER TABLE raw.order_items
ADD CONSTRAINT items_seller_fkey
FOREIGN KEY(seller_id)
REFERENCES raw.sellers(seller_id);

ALTER TABLE raw.order_items
ADD CONSTRAINT items_order_fkey
FOREIGN KEY(order_id)
REFERENCES raw.orders(order_id);

ALTER TABLE raw.payments
ADD CONSTRAINT payments_order_fkey
FOREIGN KEY(order_id)
REFERENCES raw.orders(order_id);

ALTER TABLE raw.reviews
ADD CONSTRAINT reviews_order_fkey
FOREIGN KEY(order_id)
REFERENCES raw.orders(order_id);