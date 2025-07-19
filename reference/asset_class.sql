/*

Filename: 	asset_class.sql
Purpose: 	Create and populate a lookup table with common asset classes.
Data Source:	proprietary
Notes:		--
Database: 	Snowflake
Author: 	Jason Inzer

*/

create schema if not exists reference;

CREATE TABLE reference.asset_class (
  asset_class_code VARCHAR(20) PRIMARY KEY NOT NULL,           -- EQUITY, FIXED_INCOME, etc.
  asset_class_name VARCHAR(50) NOT NULL,          -- Equity, Fixed Income, etc.
  created_at TIMESTAMP_NTZ DEFAULT SYSDATE()
);

-- Insert top level asset classes
INSERT INTO reference.asset_class_master (asset_class_code, asset_class_name) VALUES
('EQUITY', 'Equity'),
('FIXED_INCOME', 'Fixed Income'),
('DERIVATIVE', 'Derivative'),
('MONEY_MARKET', 'Money Market'),
('FUND', 'Fund'),
('ALTERNATIVE', 'Alternative'),
('COMMODITY', 'Commodity'),
('FOREIGN_EXCHANGE', 'Foreign Exchange'),
('CASH', 'Cash'),
('CRYPTOCURRENCY', 'Cryptocurrency');
