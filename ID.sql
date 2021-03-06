USE HIGH_AGE_ID
DECLARE @I INT
SET @I = 2002          /*起始年份*/
WHILE @I <= 2013       /*最後年份*/
BEGIN

EXEC('
ALTER TABLE [ID'+@I+']
ALTER COLUMN ID_IN_DATE INT')

EXEC('
ALTER TABLE [ID'+@I+']
ALTER COLUMN ID_OUT_DATE INT')

SET @I = @I + 1

END

USE HIGH_AGE_ID
DECLARE @I INT
SET @I = 2003        /*起始年份*/
WHILE @I <= 2009     /*最後年份*/
BEGIN

--在TA表中創出流水號COL1欄位、及ID+COL1之欄位

EXEC('
SELECT ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID_IN_DATE) AS COL1,*
INTO TA
FROM [ID'+@I+']')

EXEC('
ALTER TABLE TA
ADD IDA AS ID+cast(COL1 AS nvarchar(10))')


--在TB表中創出流水號COL2欄位為COL1-1、及ID+COL2之欄位、並將ID_IN_DATE改名成OUT1

EXEC('
SELECT ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID_IN_DATE)-1 AS COL2,ID,ID_IN_DATE AS OUT1
INTO TB
FROM [ID'+@I+']')

EXEC('
ALTER TABLE TB
ADD IDB AS ID+cast(COL2 AS nvarchar(10))')

--將TA和TB兩個表依照IDA,IDB做LEFT JOIN成TEMP表

EXEC('
SELECT TA.*,
       TB.IDB,OUT1
INTO TEMP
FROM TA LEFT JOIN TB
ON TA.IDA = TB.IDB')


--將ID_OUT_DATE為空的填入OUT1的值

EXEC('
UPDATE TEMP
SET ID_OUT_DATE = OUT1
WHERE ID_OUT_DATE is NULL or ID_OUT_DATE < OUT1')  /*加入判斷準則*/


--將ID_OUT_DATE還是空的填入99999999

EXEC('
UPDATE TEMP
SET ID_OUT_DATE = 99999999
WHERE ID_OUT_DATE = 0 
')

--將所需欄位匯入新ID正規資料庫並命名為ID+年份，且只留下當年在保險中的人之資料，並將AREA_NO_I改成AREA

EXEC('
SELECT ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID_IN_DATE+ID_OUT_DATE) AS PC,ID,INS_ID,INS_ID_TYPE,INS_AMT,
       INS_RELATION,UNIT_INS_TYPE,AREA_NO_I AS AREA,ID_IN_TYPE,ID_IN_DATE,ID_OUT_TYPE,ID_OUT_DATE
INTO [AID'+@I+']
FROM TEMP
WHERE ID_OUT_DATE > '+@I+'*10000')


--依照在保的先後順序標號成IDPC

EXEC('
ALTER TABLE [AID'+@I+']
ADD IDPC AS ID+cast(PC AS nvarchar(10))')


-- 處理各變數欄位
-- ID_BIRTHDAY, ID_SEX (在UID那裡處理)

-- INS_ID_TYPE
EXEC('
UPDATE [AID'+@I+']
SET INS_ID_TYPE = ''0''
WHERE INS_ID_TYPE = '' ''
')

-- AREA_NO_I and REG_ZIP_CODE
-- 2009或以前 (4碼) 區域代號；2010或以後 (3碼) 郵遞區號
-- 統一為4碼 區域代號
-- 上面已經轉換 AREA_NO_I ->AREA

-- ID_IN_TYPE
EXEC('
UPDATE [AID'+@I+']
SET ID_IN_TYPE = ''U''
WHERE ID_IN_TYPE <> ''1'' AND
      ID_IN_TYPE <> ''2'' AND 
      ID_IN_TYPE <> ''3'' AND 
      ID_IN_TYPE <> ''4'' AND 
      ID_IN_TYPE <> ''5'' AND 
      ID_IN_TYPE <> ''''  
')

-- ID_OUT_TYPE
EXEC('
UPDATE [AID'+@I+']
SET ID_OUT_TYPE = ''U''
WHERE ID_OUT_TYPE <> ''1'' AND
      ID_OUT_TYPE <> ''2'' AND 
      ID_OUT_TYPE <> ''3'' AND 
      ID_OUT_TYPE <> ''4'' AND 
      ID_OUT_TYPE <> ''5'' AND 
      ID_OUT_TYPE <> ''''  
')

-- TX_CODE (only 2010~2012)

EXEC('
ALTER TABLE [AID'+@I+']
ADD TX_CODE nvarchar(10)')    

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''01''
WHERE ID_IN_TYPE = ''1''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''02''
WHERE ID_IN_TYPE = ''2''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''60''
WHERE ID_IN_TYPE = ''3''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''05''
WHERE ID_IN_TYPE = ''4''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''06''
WHERE ID_IN_TYPE = ''5''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''08''
WHERE ID_OUT_TYPE = ''1''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''07''
WHERE ID_OUT_TYPE = ''2''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''''
WHERE ID_OUT_TYPE = ''3''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''61''
WHERE ID_OUT_TYPE = ''4''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''04''
WHERE ID_OUT_TYPE = ''5''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''''
WHERE ID_OUT_TYPE = ''6''')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''U''
WHERE ID_IN_TYPE = ''U'' OR ID_OUT_TYPE = ''U''
')

EXEC('
UPDATE [AID'+@I+']
SET TX_CODE = ''99''
WHERE ID_IN_TYPE <> '''' AND ID_OUT_TYPE <> ''''
')

-- INS_RELATION
EXEC('
UPDATE [AID'+@I+']
SET INS_RELATION = ''S''
WHERE INS_ID = ID OR INS_RELATION = '' ''
')

EXEC('
UPDATE [AID'+@I+']
SET INS_RELATION = ''U''
WHERE INS_RELATION <> ''0'' AND 
      INS_RELATION <> ''1'' AND
      INS_RELATION <> ''2'' AND 
      INS_RELATION <> ''3'' AND 
      INS_RELATION <> ''4'' AND 
      INS_RELATION <> ''5'' AND 
      INS_RELATION <> ''6'' AND 
      INS_RELATION <> ''7'' AND 
      INS_RELATION <> ''8'' AND 
      INS_RELATION <> ''9'' AND 
      INS_RELATION <> ''S''
')

-- UNIT_INS_TYPE
EXEC('
UPDATE [AID'+@I+']
SET UNIT_INS_TYPE = ''40''
WHERE UNIT_INS_TYPE = ''40U''
')

EXEC('
UPDATE [AID'+@I+']
SET UNIT_INS_TYPE = ''41''
WHERE UNIT_INS_TYPE = ''41A'' OR UNIT_INS_TYPE = ''41B'' OR UNIT_INS_TYPE = ''41C'' OR UNIT_INS_TYPE = ''41D'' OR UNIT_INS_TYPE = ''41E'' 
')

EXEC('
UPDATE [AID'+@I+']
SET UNIT_INS_TYPE = ''U''
WHERE UNIT_INS_TYPE = '' ''
')

--刪除暫存的表

EXEC('DROP TABLE TA')
EXEC('DROP TABLE TB')
EXEC('DROP TABLE TEMP')

SET @I = @I + 1
END






























USE HIGH_AGE_ID
DECLARE @I INT
SET @I = 2010        /*起始年份*/
WHILE @I <= 2013     /*最後年份*/
BEGIN

--在TA表中創出流水號COL1欄位、及ID+COL1之欄位

EXEC('
SELECT ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID_IN_DATE) AS COL1,*
INTO TA
FROM [ID'+@I+']
')

EXEC('
ALTER TABLE TA
ADD IDA AS ID+cast(COL1 AS nvarchar(10))
')

--在TB表中創出流水號COL2欄位為COL1-1、及ID+COL2之欄位、並將ID_IN_DATE改名成OUT1

EXEC('
SELECT ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID_IN_DATE)-1 AS COL2,ID,ID_IN_DATE AS OUT1
INTO TB
FROM [ID'+@I+']
')

EXEC('
ALTER TABLE TB
ADD IDB AS ID+cast(COL2 AS nvarchar(10))
')


--將TA和TB兩個表依照IDA,IDB做LEFT JOIN成TEMP表

EXEC('
SELECT TA.*,
       TB.IDB,OUT1
INTO TEMP
FROM TA LEFT JOIN TB
ON TA.IDA = TB.IDB
')


--將ID_OUT_DATE為空的填入OUT1的值

EXEC('
UPDATE TEMP
SET ID_OUT_DATE = OUT1
WHERE ID_OUT_DATE IS NULL or ID_OUT_DATE < OUT1
')


--將ID_OUT_DATE還是空的填入99999999

EXEC('
UPDATE TEMP
SET ID_OUT_DATE = 99999999
WHERE ID_OUT_DATE  = ''0''
')


--更新郵遞區號 (政府的更改)
EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''103''
WHERE REG_ZIP_CODE  = ''101''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''103''
WHERE REG_ZIP_CODE  = ''102''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''100''
WHERE REG_ZIP_CODE  = ''107''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''108''
WHERE REG_ZIP_CODE  = ''109''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''116''
WHERE REG_ZIP_CODE  = ''117''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''300''
WHERE REG_ZIP_CODE  = ''309''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''320''
WHERE REG_ZIP_CODE  = ''322''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''337''
WHERE REG_ZIP_CODE  = ''339''
')

EXEC('
UPDATE TEMP
SET REG_ZIP_CODE = ''413''
WHERE REG_ZIP_CODE  = ''431''
')
--將所需欄位匯入新ID正規資料庫並命名為ID+年份，且只留下當年在保險中的人之資料

EXEC('
SELECT ROW_NUMBER() OVER (PARTITION BY ID ORDER BY ID_IN_DATE+ID_OUT_DATE) AS PC,ID,INS_ID,INS_ID_TYPE,
       INS_AMT,INS_RELATION,UNIT_INS_TYPE,REG_ZIP_CODE,ID_IN_DATE,ID_OUT_DATE,TX_CODE
INTO [AID'+@I+']
FROM TEMP
WHERE ID_OUT_DATE > '+@I+'*10000
')


--EXEC sp_rename 
--    @objname = '新ID正規資料庫.dbo.ID+@I+.區域代碼', 
--    @newname = 'AREA', 
--    @objtype = 'COLUMN'

--依照在保的先後順序標號成IDPC

EXEC('
ALTER TABLE [AID'+@I+']
ADD IDPC AS ID+cast(PC AS nvarchar(10))')



-- 處理各變數欄位
-- ID_BIRTHDAY, ID_SEX (在UID那裡處理)

-- INS_ID_TYPE
EXEC('
UPDATE [AID'+@I+']
SET INS_ID_TYPE = ''0''
WHERE INS_ID_TYPE = '' ''
')

--將TX_CODE轉換成ID_IN_TYPE欄位及ID_OUT_TYPE欄位

EXEC('
ALTER TABLE [AID'+@I+']
ADD ID_IN_TYPE nvarchar(10)')    

EXEC('
ALTER TABLE [AID'+@I+']
ADD ID_OUT_TYPE nvarchar(10)')    

EXEC('
UPDATE [AID'+@I+']
SET ID_IN_TYPE = ''1''
WHERE TX_CODE = ''01''')

EXEC('
UPDATE [AID'+@I+']
SET ID_IN_TYPE = ''2''
WHERE TX_CODE = ''02''')

EXEC('
UPDATE [AID'+@I+']
SET ID_IN_TYPE = ''3''
WHERE TX_CODE = ''60''')

EXEC('
UPDATE [AID'+@I+']
SET ID_IN_TYPE = ''4''
WHERE TX_CODE = ''05''')

EXEC('
UPDATE [AID'+@I+']
SET ID_IN_TYPE = ''5''
WHERE TX_CODE = ''06''')

EXEC('
UPDATE [AID'+@I+']
SET ID_OUT_TYPE = ''1''
WHERE TX_CODE = ''08''')

EXEC('
UPDATE [AID'+@I+']
SET ID_OUT_TYPE = ''2''
WHERE TX_CODE = ''07''')

EXEC('
UPDATE [AID'+@I+']
SET ID_OUT_TYPE = ''4''
WHERE TX_CODE = ''61''')

EXEC('
UPDATE [AID'+@I+']
SET ID_OUT_TYPE = ''5''
WHERE TX_CODE = ''04''')

EXEC('
UPDATE [AID'+@I+']
SET ID_IN_TYPE = '' ''
WHERE ID_IN_TYPE IS NULL')

EXEC('
UPDATE [AID'+@I+']
SET ID_OUT_TYPE = '' ''
WHERE ID_OUT_TYPE IS NULL')




-- INS_RELATION
EXEC('
UPDATE [AID'+@I+']
SET INS_RELATION = ''S''
WHERE INS_ID = ID OR INS_RELATION = '' ''
')

EXEC('
UPDATE [AID'+@I+']
SET INS_RELATION = ''U''
WHERE INS_RELATION <> ''0'' AND 
      INS_RELATION <> ''1'' AND
      INS_RELATION <> ''2'' AND 
      INS_RELATION <> ''3'' AND 
      INS_RELATION <> ''4'' AND 
      INS_RELATION <> ''5'' AND 
      INS_RELATION <> ''6'' AND 
      INS_RELATION <> ''7'' AND 
      INS_RELATION <> ''8'' AND 
      INS_RELATION <> ''9'' AND 
      INS_RELATION <> ''S''
')

-- UNIT_INS_TYPE
EXEC('
UPDATE [AID'+@I+']
SET UNIT_INS_TYPE = ''40''
WHERE UNIT_INS_TYPE = ''40U''
')

EXEC('
UPDATE [AID'+@I+']
SET UNIT_INS_TYPE = ''41''
WHERE UNIT_INS_TYPE = ''41A'' OR UNIT_INS_TYPE = ''41B'' OR UNIT_INS_TYPE = ''41C'' OR UNIT_INS_TYPE = ''41D'' OR UNIT_INS_TYPE = ''41E'' 
')

EXEC('
UPDATE [AID'+@I+']
SET UNIT_INS_TYPE = ''U''
WHERE UNIT_INS_TYPE = '' ''
')


--刪除無用的欄位
EXEC('
ALTER TABLE [AID'+@I+']
DROP COLUMN REG_ZIP_CODE
')

--刪除暫存的表

EXEC('DROP TABLE TA')
EXEC('DROP TABLE TB')
EXEC('DROP TABLE TEMP')

SET @I = @I + 1
END