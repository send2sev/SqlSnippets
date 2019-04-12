DECLARE @tblTest TABLE (Id INT, [Name] VARCHAR(MAX))
INSERT INTO @tblTest
(
    Id,
    Name
)
VALUES
(1, 'Test 1'),
(2, 'Test 2')

DECLARE mycursor CURSOR FOR 
SELECT Id, [Name] FROM @tblTest

DECLARE @Id INT
DECLARE @Name VARCHAR(MAX)

OPEN mycursor   
FETCH NEXT FROM mycursor INTO @Id, @Name 

WHILE @@FETCH_STATUS = 0   
BEGIN   
	SELECT @Id, @Name 
	-- Your Script Goes here for each iteration
	--
	--		
    FETCH NEXT FROM mycursor INTO @Id, @Name    
END   

CLOSE mycursor   
DEALLOCATE mycursor
