with fct_orders as (

    select
        order_id,
        customer_id,
        amount

    from {{ ref('stg_orders')}}
    left outer join {{ ref('stg_payments') }}
    using (order_id)

)
select * from fct_orders