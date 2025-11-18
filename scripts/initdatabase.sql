/*
===============================================================
Create Databases and Schemas
Script: 
	The query checks if a database 'SuperStore' exists, if yes,
	it drops the database and recreate the database. It also creates 
	schemas: 'bronze', 'silver', 'gold'.
WARNING: 
	Running this script will permanentlydrop all the existing data 
	in the database, so ensure having proper backups before running.
===============================================================
*/

-- If exists, drop and recreate database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SuperStore')
BEGIN 
	ALTER DATABASE SuperStore SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE SuperStore;
END;
GO

-- Create Database 'SuperStore'
CREATE DATABASE SuperStore;

-- Create Schemas 'Bronze' 
CREATE SCHEMA bronze;
GO
  
-- Create Schemas 'Silver' 
CREATE SCHEMA silver;
GO
  
-- Create Schemas 'Gold' 
CREATE SCHEMA gold;
GO


