{{
    config(
        materialized='table',
        schema='intermediate',
    )
}}

with orders as (

    select * from {{ ref('stg_orders') }}

),

final as (

    select
        customer_id,

        min(order_date) as first_order,
        max(order_date) as most_recent_order
    from orders

    group by 1

)

select * from final
