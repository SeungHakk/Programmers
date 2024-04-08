-- 코드를 입력하세요
SELECT a.apnt_no, p.pt_name ,a.pt_no, a.mcdp_cd, d.dr_name, a.apnt_ymd
from PATIENT p, DOCTOR d, APPOINTMENT a
where p.pt_no = a.pt_no and d.dr_id = a.mddr_id
    and to_char(a.apnt_ymd,'RRRR-MM-DD') = '2022-04-13'
    and a.apnt_cncl_yn = 'N'
    and a.mcdp_cd = 'CS'
order by a.apnt_ymd ;