

--shows tallest fighter


select *
from UFC..ufc
order by Fighter_height desc

--shows heaviest fighter

select *
from UFC..ufc
order by cast(fighter_w as int) desc


-- winniest fighter
select *
from UFC..ufc
order by cast(fighter_w as int) desc





--shows How much Fighters are with different stances

select count(fighter_stance)as Number_of_stances, fighter_stance
from UFC..ufc
group by fighter_stance 









































--making columns numeric

update UFC..ufc
set fighter_w = cast(fighter_w  as int)


update UFC..ufc
set fighter_l = cast(fighter_l  as int)

update UFC..ufc
set fighter_d = cast(fighter_d  as int)


update UFC..ufc
set fighter_height = cast(fighter_height  as varchar(255))

update UFC..ufc
set fighter_weight = cast(fighter_weight  as varchar(255))



update UFC..ufc
set fighter_reach = cast(fighter_reach  as varchar(255))








--removing "--" with nulls in fighter_height and fighter_reach and fighter_weight

UPDATE UFC..ufc
SET
fighter_height = REPLACE(fighter_height,'',NULL)
WHERE fighter_height = '--'


UPDATE UFC..ufc
SET
fighter_weight = REPLACE(fighter_weight,'',NULL)
WHERE fighter_weight = '--'

UPDATE UFC..ufc
SET
fighter_reach = REPLACE(fighter_reach,'',NULL)
WHERE fighter_reach = '--'

UPDATE UFC..ufc
SET
fighter_stance = REPLACE(fighter_stance,'',NULL)
WHERE fighter_stance = ' '

UPDATE UFC..ufc
SET
fighter_nickname = REPLACE(fighter_nickname,'',NULL)
WHERE fighter_nickname = ' '

Alter table UFC..Fighters_ufc
drop column fighter_belt