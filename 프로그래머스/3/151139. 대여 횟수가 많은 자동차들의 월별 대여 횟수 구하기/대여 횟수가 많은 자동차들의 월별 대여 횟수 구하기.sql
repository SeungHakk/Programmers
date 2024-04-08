-- 코드를 입력하세요
select extract(month from h.start_date) month, h.car_id, count(*) as records
from  (select car_id, count(*)
         from CAR_RENTAL_COMPANY_RENTAL_HISTORY 
         where start_date between to_date('2022-08-01', 'rrrr-mm-dd') 
              and to_date('2022-10-31', 'rrrr-mm-dd')
         group by car_id
         having count(*) >= 5) v, CAR_RENTAL_COMPANY_RENTAL_HISTORY h
where v.car_id = h.car_id
    and h.start_date between to_date('2022-08-01', 'rrrr-mm-dd') 
              and to_date('2022-10-31', 'rrrr-mm-dd')
group by extract(month from h.start_date), h.car_id
order by extract(month from h.start_date) asc , h.car_id desc;