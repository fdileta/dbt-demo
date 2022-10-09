{{
    config(
        materialized='table',
        schema='core',
    )
}}

with customers as (

    select * from {{ ref('stg_customers') }}

),

customer_orders as (

    select * from {{ ref('customer_orders') }}

),

customer_payments as (

    select * from {{ ref('customer_payments') }}

),

final as (

    select
        customers.customer_id,
        customer_orders.first_order_of_customer,
        customer_orders.most_recent_order_of_customer,
        customer_orders.total_orders_of_customre,
        customer_payments.total_amount as total_payments_of_customer

    from customers

    left join customer_orders using (customer_id)

    left join customer_payments using (customer_id)

)

select * from final limit 100