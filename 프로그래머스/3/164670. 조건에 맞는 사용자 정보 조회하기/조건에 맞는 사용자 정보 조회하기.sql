-- 코드를 입력하세요
SELECT user_id, nickname, city || ' ' || street_address1 || ' ' || street_address2 as 전체주소, substr(tlno,1,3) || '-' || substr(tlno,4,4) || '-' || substr(tlno,8) as 전화번호
from (select writer_id, count(*)
      from USED_GOODS_BOARD 
      group by writer_id
      having count(*) >= 3) b, USED_GOODS_USER u
where b.writer_id=u.user_id
order by 1 desc;