WITH 
CD AS(
	SELECT cd.ID, cd.FUNC_DATE, cd.ACODE_ICD9_1, cd.ACODE_ICD9_2, cd.ACODE_ICD9_3, hosb.hosp_cont_type FROM HIGH_AGE_CD.DBO.CD2005 cd left join HIGH_AGE_HOSB.dbo.hosb2005 hosb on HIGH_AGE_CD.dbo.CD2005.HOSP_ID = HIGH_AGE_HOSB.dbo.hosb2005.HOSP_ID 
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2006
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2007
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2008
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2009
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2010
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2011
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2012
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1, ACODE_ICD9_2, ACODE_ICD9_3 FROM HIGH_AGE_CD.DBO.CD2013
)

SELECT T.ID, T.FIRST_FUNC_DATE as first_func_date, T.ACODE_ICD9_1 as A_CODE, min(CD.FUNC_DATE) as second_func_date FROM A.[dbo].[單一icd看診日期] T
left join CD
on (CD.ID = T.ID and (T.ACODE_ICD9_1 = CD.ACODE_ICD9_1 or T.ACODE_ICD9_1 = CD.ACODE_ICD9_2 or T.ACODE_ICD9_1 = CD.ACODE_ICD9_3) and (CD.FUNC_DATE > T.FIRST_FUNC_DATE))
group by T.ID, T.FIRST_FUNC_DATE, T.ACODE_ICD9_1