with monthly_revenue as (
    select 
        to_char(orders.order_date, 'yyyy-mm') as monthly_trend, 
        sum(orders.total_amount) as total_revenue
    from orders
    group by to_char(orders.order_date, 'yyyy-mm')
)
select 
    monthly_trend,
    total_revenue,
    lag(total_revenue, 1) over (order by monthly_trend) as previous_month_revenue,
    total_revenue - lag(total_revenue, 1) over (order by monthly_trend) as revenue_change,
    round(
        ((total_revenue - lag(total_revenue, 1) over (order by monthly_trend)) 
        / lag(total_revenue, 1) over (order by monthly_trend)) * 100, 
        2
    ) as growth_percentage
from monthly_revenue
order by monthly_trend asc