SELECT customer_id, sum(tip) 'total_tips'
FROM customer_orders
GROUP BY customer_id
HAVING total_tips > 5
ORDER BY total_tips DESC;


