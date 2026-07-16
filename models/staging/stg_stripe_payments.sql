select  
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status,
    amount / 100 as amount,
    created AS created_at
from {{ source('stripe', 'payment')}}