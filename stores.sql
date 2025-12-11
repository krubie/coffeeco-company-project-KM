SELECT
store_id,
TRIM(channel) as channel,
TRIM(store_name) as store_name,
TRIM(region) as region,
TRIM(city) as city

 FROM [coffeeco].[dim_stores]