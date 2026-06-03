-- what are the top-rated products?
select 
    products.product_id,
    products.name,
    round(avg(product_reviews.rating), 1) as average_rating,
    count(product_reviews.review_id) as total_reviews
from products
join product_reviews on products.product_id = product_reviews.product_id
group by products.product_id, products.name
order by average_rating desc, total_reviews desc
limit 5;
