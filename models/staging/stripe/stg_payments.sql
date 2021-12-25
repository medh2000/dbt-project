with stg_payments as (

    select
        id as payment_id,
        orderid as order_id,
        status,
        paymentmethod as payment_method,
        -- amount is stored in cents, convert it to dollars
        amount / 100 as amount,
        created as created_at
    from {{ source('stripe', 'payment')}} --raw.stripe.payment

)
select * from stg_payments
