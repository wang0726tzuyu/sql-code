WITH 
CD AS(
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2005
	WHERE
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'

	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2006
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'

	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2007
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'

	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2008
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'

	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2009
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'

	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2010
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'

	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2011
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2012
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'
	union all
	SELECT ID, FUNC_DATE, ACODE_ICD9_1 FROM HIGH_AGE_CD.DBO.CD2013
	WHERE 
		(CASE_TYPE = '04' or CASE_TYPE = '06') and
		ACODE_ICD9_2 != '00000' and ACODE_ICD9_3 != '00000'
)

select cd.ID, min(FUNC_DATE) as FIRST_FUNC_DATE, CD.ACODE_ICD9_1 into A.dbo.單一icd看診日期 from CD
group by id, ACODE_ICD9_1