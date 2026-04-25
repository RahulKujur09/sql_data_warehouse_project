/*
==========================================================================================================
Create Database and Schemas
==========================================================================================================
Script Purpose:
  This script creates a new database named 'Datawarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
  with the database: 'bronze', 'silver', 'gold'.

Warning:
  Running this script will drop the entire 'Datawarehouse' database if it exists.
  All data in the database will be permanently deleted. Proceed with caution
  and ensure you have proper backups before running this script.

*/

USE master
GO

-- Dropping and recreating the 'Datawarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse
END

--Creating Datawarehouse Database

CREATE DATABASE Datawarehouse;

USE Datawarehouse
GO

-- Creating Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

/* IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'my_db2')
BEGIN
	ALTER DATABASE my_db2 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE my_db2
END
*/
