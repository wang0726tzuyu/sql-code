


DECLARE @I INT
SET @I = 2006
WHILE @I <= 2013
BEGIN

EXEC('
with cd as(
SELECT [ID], [FUNC_DATE]
FROM HIGH_AGE_CD.DBO.CD'+@I+'
WHERE 
	(SUBSTRING(ACODE_ICD9_1,1,3) = ''250'' AND SUBSTRING(ACODE_ICD9_1,5,1) != ''3'' AND SUBSTRING(ACODE_ICD9_1,5,1) != ''1'')
	OR
	(SUBSTRING(ACODE_ICD9_2,1,3) = ''250'' AND SUBSTRING(ACODE_ICD9_2,5,1) != ''3'' AND SUBSTRING(ACODE_ICD9_2,5,1) != ''1'')
	OR
	(SUBSTRING(ACODE_ICD9_3,1,3) = ''250'' AND SUBSTRING(ACODE_ICD9_3,5,1) != ''3'' AND SUBSTRING(ACODE_ICD9_3,5,1) != ''1'')
	OR
	ACODE_ICD9_1 = ''A1810'' or ACODE_ICD9_2 = ''A1810'' or ACODE_ICD9_3 = ''A1810''
)
select cd.id, cd.func_date, NEW_ID100W.ID_SEX, NEW_ID100W.NEW_BIRTHDAY from cd
left join HIGH_AGE_ID.dbo.NEW_ID100W
on NEW_ID100W.ID = cd.ID
')

SET @I = @I + 1
END