with 
a1996 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD1996
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD1996
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a1996.ID),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 1996-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a1996 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a1996.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a1997 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD1997
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD1997
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a1997.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 1997-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a1997 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a1997.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;

with
a1998 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD1998
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD1998
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a1998.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 1998-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a1998 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a1998.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a1999 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD1999
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD1999
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a1999.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 1999-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a1999 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a1999.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2000 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2000
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2000
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2000.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2000-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2000 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2000.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2001 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2001
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2001
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2001.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2001-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2001 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2001.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2002 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2002
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2002
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2002.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2002-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2002 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2002.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2003 as
(	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2003
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2003
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2003.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2003-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2003 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2003.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2004 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2004
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2004
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2004.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2004-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2004 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2004.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2005 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2005
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2005
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2005.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2005-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2005 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2005.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2006 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2006
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2006
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2006.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2006-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2006 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2006.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2007 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2007
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2007
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2007.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2007-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2007 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2007.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2008 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2008
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2008
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2008.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2008-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2008 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2008.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2009 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2009
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2009
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2009.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2009-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2009 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2009.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2010 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2010
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2010
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2010.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2010-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2010 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2010.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2011 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2011
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2011
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2011.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2011-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2011 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2011.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2012 as
(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2012
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2012
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2012.id),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2012-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2012 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2012.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID;
with
a2013 as
(	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2013
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
	union all
	SELECT ID, IN_DATE AS FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2013
	WHERE 
		(SUBSTRING(ICD9CM_CODE,1,3) = '250' AND SUBSTRING(ICD9CM_CODE,5,1) != '3' AND SUBSTRING(ICD9CM_CODE,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_1,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_1,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_2,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_2,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_3,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_3,5,1) != '1')
		OR
		(SUBSTRING(ICD9CM_CODE_4,1,3) = '250' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '3' AND SUBSTRING(ICD9CM_CODE_4,5,1) != '1')
)
select distinct(a2013.ID),HIGH_AGE_ID.dbo.NEW_ID100W.ID_SEX, 2013-substring(HIGH_AGE_ID.dbo.NEW_ID100W.NEW_BIRTHDAY,1,4)
from
a2013 left join HIGH_AGE_ID.dbo.NEW_ID100W
on a2013.ID = HIGH_AGE_ID.dbo.NEW_ID100W.ID