-- 코드를 입력하세요
SELECT '/home/grep/src/' || f.board_id || '/' || f.file_id || f.file_name || file_ext as "FILE_PATH"
from (select board_id, rank() over(order by views desc) rnk
    from USED_GOODS_BOARD) b, USED_GOODS_FILE f
where b.board_id = f.board_id
    and b.rnk = 1
order by f.file_id desc;