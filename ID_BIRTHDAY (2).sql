DECLARE @I INT
DECLARE @J NVARCHAR(15)
SET @I = 2002
SET @J = '15'
WHILE @I <= 2013
BEGIN

EXEC('
UPDATE ID'+@I+'
SET ID_BIRTHDAY = SUBSTRING(ID_BIRTHDAY, 1, 6);
UPDATE ID'+@I+'
SET ID_BIRTHDAY = CONCAT(ID_BIRTHDAY, '+@J+');
')

SET @I = @I + 1
END 