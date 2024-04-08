-- 코드를 입력하세요
SELECT order_id, product_id, to_char(out_date,'RRRR-MM-DD'), case when out_date > to_date('20220501','RRRRMMDD') then '출고대기'
                                            when out_date <= to_date('20220501','RRRRMMDD') then '출고완료'
                                            else '출고미정' end as 출고여부
from food_order
order by 1 ;