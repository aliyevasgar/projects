-- Who are the most valuable customers?
select customers.customer_id, customers.name, sum(orders.total_amount) as total_spent
from orders
join customers on customers.customer_id = orders.customer_id
group by customers.customer_id, customers.name
order by total_spent desc
limit 5