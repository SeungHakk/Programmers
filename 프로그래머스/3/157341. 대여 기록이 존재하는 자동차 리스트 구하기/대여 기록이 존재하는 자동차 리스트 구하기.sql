-- 코드를 입력하세요
SELECT distinct cc.car_id
from CAR_RENTAL_COMPANY_CAR cc, CAR_RENTAL_COMPANY_RENTAL_HISTORY ch
where cc.car_id = ch.car_id
    and cc.car_type = '세단'
    and to_char(ch.start_date,'MM') = '10'
order by cc.car_id desc;