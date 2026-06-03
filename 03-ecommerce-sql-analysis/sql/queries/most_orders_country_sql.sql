-- where do most of the orders come from?
select customers.country, count(orders.order_id) as total_orders
from customers
join orders on customers.customer_id = orders.customer_id
group by customers.country
order by total_orders desc
limit 5