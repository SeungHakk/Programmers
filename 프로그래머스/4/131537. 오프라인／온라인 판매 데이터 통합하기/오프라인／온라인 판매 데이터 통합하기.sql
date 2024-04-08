select to_char(sales_date, 'RRRR-MM-DD') sales_date, product_id, user_id, sales_amount
from online_sale
where to_char(sales_date,'RRRRMM') = '202203'
union all
select to_char(sales_date, 'RRRR-MM-DD') sales_date, product_id, null, sales_amount
from offline_sale
where to_char(sales_date,'RRRRMM') = '202203'
order by sales_date, product_id, user_id;