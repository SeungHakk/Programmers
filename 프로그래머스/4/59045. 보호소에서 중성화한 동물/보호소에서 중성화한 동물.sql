-- 코드를 입력하세요

select o.animal_id, o.animal_type, o.name
from animal_ins i, animal_outs o
where i.animal_id = o.animal_id
    and i.SEX_UPON_INTAKE like 'Intact%'
    and (o.SEX_UPON_OUTCOME like 'Spayed%' or o.SEX_UPON_OUTCOME like 'Neutered%')
order by 1;