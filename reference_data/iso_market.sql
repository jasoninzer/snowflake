/*

Filename:     iso_market.sql
Purpose:      Create and populate a lookup table with the ISO 10383 Market Identifier Codes (MICS).
Data Source:  https://www.iso20022.org/market-identifier-codes
Notes:        The codes are updated regularly. Please refer to data source for latest.
Database:     Snowflake
Author:       Jason Inzer

*/

create or replace table reference.mic (
	mic char(4) not null,
	operating_mic char(4),
	mic_type char(4),
	market_name varchar(255),
	country char(2),
	city varchar(255),
	website varchar(255),
	acronym varchar(40),
	is_active boolean,
	created_at timestamp_ntz default sysdate()
);


