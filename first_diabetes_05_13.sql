WITH 
CD AS(
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.dbo.CD2005
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2006
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2007
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2008
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2009
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2010
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2011
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2012
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
	union all
	SELECT ID, FUNC_DATE FROM HIGH_AGE_CD.DBO.CD2013
	WHERE 
		(SUBSTRING(ACODE_ICD9_1,1,3) = '250' AND SUBSTRING(ACODE_ICD9_1,5,1) != '3' AND SUBSTRING(ACODE_ICD9_1,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_2,1,3) = '250' AND SUBSTRING(ACODE_ICD9_2,5,1) != '3' AND SUBSTRING(ACODE_ICD9_2,5,1) != '1')
		OR
		(SUBSTRING(ACODE_ICD9_3,1,3) = '250' AND SUBSTRING(ACODE_ICD9_3,5,1) != '3' AND SUBSTRING(ACODE_ICD9_3,5,1) != '1')
		OR
		ACODE_ICD9_1 = 'A1810' or ACODE_ICD9_2 = 'A1810' or ACODE_ICD9_3 = 'A1810'
),
DD AS(
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2005
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2006
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2007
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2008
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2009
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2010
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2011
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2012
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
	UNION ALL
	SELECT ID, IN_DATE as FUNC_DATE FROM HIGH_AGE_DD.DBO.DD2013
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
		OR
		ICD9CM_CODE = 'A1810' or ICD9CM_CODE_1 = 'A1810' or ICD9CM_CODE_2 = 'A1810' or ICD9CM_CODE_3 = 'A1810' or ICD9CM_CODE_4 = 'A1810'
),
A as(
SELECT *, 'cd' as FUNC_TYPE, SUBSTRING(FUNC_DATE, 1, 4) as YEARS FROM CD
UNION ALL
SELECT *, 'dd' as FUNC_TYPE, SUBSTRING(FUNC_DATE, 1, 4) as YEARS FROM DD
),
B as(
SELECT ID, MIN(FUNC_DATE) AS F_D_DATE FROM A
GROUP BY ID
)
select B.*, HIGH_AGE_ID.dbo.UID100W.ID_SEX, HIGH_AGE_ID.dbo.UID100W.NEW_BIRTHDAY into HIGH_AGE_CD.dbo.FIRST_DIABETES_05_13 from B
left join HIGH_AGE_ID.dbo.UID100W
on HIGH_AGE_ID.dbo.UID100W.ID = B.ID