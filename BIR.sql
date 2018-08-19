select ID,ID_SEX,ID_BIRTHDAY
into HIGH_AGE_ID.dbo.UID_union_2003to2013
FROM HIGH_AGE_ID.DBO.UID2003
UNION ALL
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2004
UNION ALL
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2005
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2006
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2007
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2008
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2009
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2010
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2011
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2012
union all
select ID,ID_SEX,ID_BIRTHDAY
from HIGH_AGE_ID.dbo.UID2013
;

--UID按生日多寡排序2005to2013
with A as(SELECT  ID ,ID_BIRTHDAY ,COUNT(ID)AS 人數
FROM HIGH_AGE_ID.dbo.UID_union_2003to2013
GROUP BY ID,ID_BIRTHDAY
)
SELECT *,
ROW_NUMBER() OVER(PARTITION BY ID ORDER BY A.人數 DESC ) AS ROWID
into HIGH_AGE_ID.dbo.UID按生日多寡排序2005to2013
FROM A
 
--生日眾數
select *
into HIGH_AGE_ID.dbo.生日眾數
from HIGH_AGE_ID.dbo.UID按生日多寡排序2005to2013
where ROWID='1'


--建立新的UID
--新增 NEW_BIRTHDAY)
 
DECLARE @I INT
SET @I=2003
WHILE @I<=2013
BEGIN
 
EXEC('
select A.*,B.ID_BIRTHDAY as NEW_BIRTHDAY
into HIGH_AGE_ID.dbo.NEW_UID'+@I+'
from HIGH_AGE_ID.dbo.UID'+@I+' A left join HIGH_AGE_ID.dbo.生日眾數 B
on A.ID=B.ID
')
SET @I=@I+1
END
 
--新增NEW_AGE(用眾數取的AGE)
 
DECLARE @J INT
SET @J=2003
WHILE @J<=2013
BEGIN
 
EXEC('
ALTER TABLE HIGH_AGE_ID.dbo.NEW_UID'+@J+'
ADD NEW_AGE nvarchar(15)
')
EXEC('
UPDATE HIGH_AGE_ID.dbo.NEW_UID'+@J+'
SET NEW_AGE = '+@J+' - SUBSTRING(NEW_BIRTHDAY,1,4)
')
 
SET @J=@J+1
END

