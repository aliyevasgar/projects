-- what is the best-selling product?
select products.product_id, products.name, sum(order_items.quantity) as total_sales
from order_items
join products on products.product_id = order_items.product_id
group by products.product_id, products.name
order by total_sales desc
limit 5;