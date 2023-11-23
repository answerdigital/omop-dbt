with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_patient') }}

),

renamed as (

    select
        id,
        first_name,
        last_name,
        gender,
        ob_date

    from source

)

select * from renamed
