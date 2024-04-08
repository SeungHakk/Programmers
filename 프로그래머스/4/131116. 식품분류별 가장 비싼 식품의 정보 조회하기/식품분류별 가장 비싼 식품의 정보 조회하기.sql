-- 코드를 입력하세요

select category, price as max_price, product_name
from (SELECT category, price, product_name, rank() over(partition by category order by price desc) rnk
        from FOOD_PRODUCT
        where category in ('과자','국','김치','식용유'))
where rnk = 1
order by max_price desc;