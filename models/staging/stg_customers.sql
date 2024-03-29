with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ source('sheets_sources', 'ingested_raw_customers') }}
    where id > 5
),

renamed as (

    select
        id as customer_id,
        first_name,
        email,

    from source

)

select * from renamed
