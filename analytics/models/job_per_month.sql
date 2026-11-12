select
	DATE_TRUNC('month',search_date) AS month,
    search_term AS role,
    count(*) AS postings
from {{ ref('job_postings') }}
group by 
date_trunc('month',search_date), search_term
order by date_trunc('month',search_date), search_term