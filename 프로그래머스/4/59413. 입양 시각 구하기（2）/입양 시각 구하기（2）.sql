/* with hour_w as (select level-1 hour
            from dual
            connect by level <= 24)
            
select hour, nvl(count,0) count
from hour_w left outer join (select to_char(datetime,'HH24') datetime, count(*) count
                             from ANIMAL_OUTS
                             group by to_char(datetime,'HH24'))
on lpad(hour,2,0) = datetime
order by hour; */


with hour_w as (select level-1 hour
            from dual
            connect by level <= 24)       
            
select hour, count(datetime) count
from hour_w left outer join ANIMAL_OUTS
on lpad(hour,2,0) = to_char(datetime,'HH24')
group by hour
order by hour;