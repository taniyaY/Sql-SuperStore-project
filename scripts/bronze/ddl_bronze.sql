/* 
	================================================================
	DDL: Creating Bronze Layer Table
	Script purpose:
		The below query will drop the existing table 'bronze.super_store'
		if it exists, then recreate the table.
		This script can be used to redefine any DDL structure for 
		bronze table. 
	================================================================

*/

-- Drop the table if it already exists
IF OBJECT_ID ('bronze.super_store', 'U') IS NOT NULL
	DROP TABLE bronze.super_store;
GO

-- Create table bronze.super_store
CREATE TABLE bronze.super_store (
	[Row ID] INT, 
	[Order ID] NVARCHAR(50),
	[Order Date] DATE,
	[Ship Date] DATE, 
	[Ship Mode] NVARCHAR(50),
	[Customer ID] NVARCHAR(50),
	[Customer Name] NVARCHAR(50), 
	Segment NVARCHAR(50), 
	Country NVARCHAR(50), 
	City NVARCHAR(50), 
	[State] NVARCHAR(50), 
	[Postal Code] INT, 
	Region NVARCHAR(50),
	[Product ID] NVARCHAR(50), 
	Category NVARCHAR(50), 
	[Sub-Category] NVARCHAR(50), 
	[Product Name] NVARCHAR(MAX), 
	[Sales] NVARCHAR(MAX), 
	Quantity NVARCHAR(MAX), 
	Discount NVARCHAR(MAX), 
	Profit NVARCHAR(MAX)
)


