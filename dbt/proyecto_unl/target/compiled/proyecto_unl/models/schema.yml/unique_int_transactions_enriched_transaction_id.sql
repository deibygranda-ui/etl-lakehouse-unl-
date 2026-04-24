
    
    

select
    transaction_id as unique_field,
    count(*) as n_records

from "db_warehouse"."public_intermediate"."int_transactions_enriched"
where transaction_id is not null
group by transaction_id
having count(*) > 1


