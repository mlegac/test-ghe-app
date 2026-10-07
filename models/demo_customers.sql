select
    customer,
    count(*) as number_of_orders,
    sum(amount) as total_amount
from {{ ref('demo_orders') }}
group by customer
