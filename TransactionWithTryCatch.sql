USE [DATABASE_NAME] --Name of your database
BEGIN TRANSACTION
BEGIN TRY 
/******************************************************************************************************/ 

-- Script goes here

/******************************************************************************************************/ 
COMMIT TRANSACTION
END TRY
BEGIN CATCH
	DECLARE @chvError VARCHAR(MAX) = ERROR_MESSAGE()
	IF @@TRANCOUNT > 0
	BEGIN
		ROLLBACK TRANSACTION
	END
	
	RAISERROR(@chvError, 16, 1)
END CATCH
