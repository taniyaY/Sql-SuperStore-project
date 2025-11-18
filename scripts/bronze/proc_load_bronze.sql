/*
	============================================================
	Script Purpose: 
		This script insert data into the bronze table from the 
		source. 

	Action Performed: 
		- Truncate Table 
		- Insert into bronze layer from the source

	To Execute: EXEC bronze.proc_load_bronze;
	============================================================
*/

CREATE OR ALTER PROCEDURE bronze.proc_load_bronze AS
BEGIN
	BEGIN TRY 
		DECLARE @start_time DATETIME, @end_time DATETIME;
	
		SET @start_time = GETDATE()
		PRINT '>> Truncating Table: bronze.super_store'; 
		TRUNCATE TABLE bronze.super_store;


	  PRINT '>> Inserting into Table: bronze.super_store';
		BULK INSERT bronze.super_store
		FROM 'C:\SQLData\Sample - Superstore.csv'
		WITH (
	
			FIRSTROW = 2, 
			FIELDTERMINATOR = ',', 
			ROWTERMINATOR = '0x0A', 
			TABLOCK
		)
		SET @end_time = GETDATE()
		PRINT 'Total Duration: ' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR) + ' seconds.'; 
	END TRY 
	BEGIN CATCH
	PRINT 'Error occured: ' + ERROR_MESSAGE();
	END CATCH 
END


