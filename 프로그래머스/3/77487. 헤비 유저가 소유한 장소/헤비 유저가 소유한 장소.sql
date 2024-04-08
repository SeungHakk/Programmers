-- 코드를 입력하세요
with heavy_user as (select host_id, count(1) cnt
                from places
                group by host_id)


SELECT p.id, p.name, p.host_id
from places p, heavy_user h
where p.host_id = h.host_id
    and cnt >= 2;