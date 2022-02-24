with customers as (

	select * from {{ source('jaffle_shop', 'customers') }}
	
),

transformed as (

	select
		  id as customer_id
		, first_name
		, last_name

	from customers

)

select * from transformed