# Question 1: What is the total amount each customer spent at the restaurant?

SELECT s.customer_id, SUM(price) as amount_spent
FROM sales as s, menu as m
WHERE s.product_id = m.product_id
GROUP BY s.customer_id
ORDER BY amount_spent DESC
