-- 코드를 입력하세요
SELECT p.product_id, p.product_name, sum(amount) * p.price as total_sales
from FOOD_PRODUCT p,food_order o
where p.product_id = o.product_id
    and o.produce_date between to_date('2022-05-01','RRRR-MM-DD') and to_date('2022-05-31','RRRR-MM-DD')
group by p.product_id, p.product_name, price 
order by 3 desc, 1;