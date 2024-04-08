-- 코드를 입력하세요
select car_id, AVAILABILITY
from (select car_id, case when to_date('2022-10-16','RRRR-MM-DD') between start_date and end_date then '대여중' else '대여 가능' end as AVAILABILITY, rank() over(partition by car_id order by history_id desc) rnk
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
     where start_date <= to_date('2022-10-16','RRRR-MM-DD'))
where rnk = 1
order by 1 desc;