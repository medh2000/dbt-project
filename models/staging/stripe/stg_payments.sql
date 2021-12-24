with stg_payments as (

    select
        orderid as order_id,
        created,
        paymentmethod,
        amount
    from raw.stripe.payment

)
select * from stg_payments