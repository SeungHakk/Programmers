-- 코드를 입력하세요
SELECT food_type, rest_id, rest_name, favorites
from (select food_type, rest_id, rest_name, favorites,rank() over(partition by food_type order by favorites desc) cnt
        from rest_info)
where cnt = 1
order by food_type desc;