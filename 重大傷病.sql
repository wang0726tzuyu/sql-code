use HIGH_AGE_CD;
select 
D_FUNC_BIR.ID_SEX,
DATEDIFF(DAY, D_FUNC_BIR.F_D_DATE,FIRST_重大傷病.F_D_DATE) as datedif,
DATEDIFF(YEAR, D_FUNC_BIR.NEW_BIRTHDAY,D_FUNC_BIR.F_D_DATE) as age
from D_FUNC_BIR
left join FIRST_重大傷病
on D_FUNC_BIR.ID = FIRST_重大傷病.ID
where
(FIRST_重大傷病.F_D_DATE>D_FUNC_BIR.F_D_DATE) and (D_FUNC_BIR.ID != '01c5d00054150dde40137f4e90b0f2b1')