USE HIGH_AGE_ID;

DECLARE @I INT
SET @I = 2004
WHILE @I <=2013
BEGIN
EXEC('
ALTER TABLE ID'+@I+' ADD YEAR NVARCHAR(15)
')
EXEC('
UPDATE ID'+@I+'
SET YEAR = '+@I+'
')
SET @I = @I + 1
END;