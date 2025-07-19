/*

Filename: 	security_type.sql
Purpose: 	Create and populate a reference table with common security types.
Data Source:	proprietary
Notes:		--
Database: 	Snowflake
Author: 	Jason Inzer

*/

create schema if not exists reference;

create table reference.security_type (
  security_type_code VARCHAR(30) PRIMARY KEY NOT NULL,                  -- COMMON_STOCK, CORPORATE_BOND, etc.
  security_type_name VARCHAR(100),                 -- Common Stock, Corporate Bond, etc.
  asset_class_code VARCHAR(20) NOT NULL,           -- EQUITY, FIXED_INCOME, etc.
  asset_class_name VARCHAR(100) NOT NULL,          -- Equity, Fixed Income, etc.
  created_at timestamp_ntz default sysdate()
);


INSERT INTO reference.asset_class (asset_class_code, asset_class_name, security_type_code, security_type_name) VALUES
-- EQUITY Asset Class
('EQUITY', 'Equity', 'COMMON_STOCK', 'Common Stock'),
('EQUITY', 'Equity', 'PREFERRED_STOCK', 'Preferred Stock'),
('EQUITY', 'Equity', 'CONVERTIBLE_PREFERRED', 'Convertible Preferred Stock'),
('EQUITY', 'Equity', 'ADR', 'American Depositary Receipt'),
('EQUITY', 'Equity', 'GDR', 'Global Depositary Receipt'),
('EQUITY', 'Equity', 'REIT', 'Real Estate Investment Trust'),
('EQUITY', 'Equity', 'BDC', 'Business Development Company'),
('EQUITY', 'Equity', 'MLP', 'Master Limited Partnership'),
('EQUITY', 'Equity', 'CLOSED_END_FUND', 'Closed-End Fund'),
('EQUITY', 'Equity', 'WARRANT', 'Warrant'),

-- FIXED_INCOME Asset Class
('FIXED_INCOME', 'Fixed Income', 'TREASURY_BILL', 'Treasury Bill'),
('FIXED_INCOME', 'Fixed Income', 'TREASURY_NOTE', 'Treasury Note'),
('FIXED_INCOME', 'Fixed Income', 'TREASURY_BOND', 'Treasury Bond'),
('FIXED_INCOME', 'Fixed Income', 'TIPS', 'Treasury Inflation-Protected Security'),
('FIXED_INCOME', 'Fixed Income', 'MUNICIPAL_BOND', 'Municipal Bond'),
('FIXED_INCOME', 'Fixed Income', 'CORPORATE_BOND', 'Corporate Bond'),
('FIXED_INCOME', 'Fixed Income', 'HIGH_YIELD_BOND', 'High Yield Bond'),
('FIXED_INCOME', 'Fixed Income', 'CONVERTIBLE_BOND', 'Convertible Bond'),
('FIXED_INCOME', 'Fixed Income', 'FLOATING_RATE_NOTE', 'Floating Rate Note'),
('FIXED_INCOME', 'Fixed Income', 'ZERO_COUPON_BOND', 'Zero Coupon Bond'),
('FIXED_INCOME', 'Fixed Income', 'GOVERNMENT_AGENCY_BOND', 'Government Agency Bond'),
('FIXED_INCOME', 'Fixed Income', 'SOVEREIGN_BOND', 'Sovereign Bond'),
('FIXED_INCOME', 'Fixed Income', 'EUROBOND', 'Eurobond'),
('FIXED_INCOME', 'Fixed Income', 'MBS', 'Mortgage-Backed Security'),
('FIXED_INCOME', 'Fixed Income', 'ABS', 'Asset-Backed Security'),
('FIXED_INCOME', 'Fixed Income', 'CMBS', 'Commercial Mortgage-Backed Security'),
('FIXED_INCOME', 'Fixed Income', 'CDO', 'Collateralized Debt Obligation'),
('FIXED_INCOME', 'Fixed Income', 'COVERED_BOND', 'Covered Bond'),

-- DERIVATIVE Asset Class
('DERIVATIVE', 'Derivative', 'CALL_OPTION', 'Call Option'),
('DERIVATIVE', 'Derivative', 'PUT_OPTION', 'Put Option'),
('DERIVATIVE', 'Derivative', 'FUTURES_CONTRACT', 'Futures Contract'),
('DERIVATIVE', 'Derivative', 'EQUITY_INDEX_FUTURE', 'Equity Index Future'),
('DERIVATIVE', 'Derivative', 'CURRENCY_FUTURE', 'Currency Future'),
('DERIVATIVE', 'Derivative', 'COMMODITY_FUTURE', 'Commodity Future'),
('DERIVATIVE', 'Derivative', 'INTEREST_RATE_FUTURE', 'Interest Rate Future'),
('DERIVATIVE', 'Derivative', 'BOND_FUTURE', 'Bond Future'),
('DERIVATIVE', 'Derivative', 'SINGLE_STOCK_FUTURE', 'Single Stock Future'),
('DERIVATIVE', 'Derivative', 'FORWARD_CONTRACT', 'Forward Contract'),
('DERIVATIVE', 'Derivative', 'INTEREST_RATE_SWAP', 'Interest Rate Swap'),
('DERIVATIVE', 'Derivative', 'CURRENCY_SWAP', 'Currency Swap'),
('DERIVATIVE', 'Derivative', 'CREDIT_DEFAULT_SWAP', 'Credit Default Swap'),
('DERIVATIVE', 'Derivative', 'EQUITY_SWAP', 'Equity Swap'),
('DERIVATIVE', 'Derivative', 'COMMODITY_SWAP', 'Commodity Swap'),
('DERIVATIVE', 'Derivative', 'STRUCTURED_NOTE', 'Structured Note'),
('DERIVATIVE', 'Derivative', 'STRUCTURED_PRODUCT', 'Structured Product'),

-- MONEY_MARKET Asset Class
('MONEY_MARKET', 'Money Market', 'COMMERCIAL_PAPER', 'Commercial Paper'),
('MONEY_MARKET', 'Money Market', 'CERTIFICATE_OF_DEPOSIT', 'Certificate of Deposit'),
('MONEY_MARKET', 'Money Market', 'BANKERS_ACCEPTANCE', 'Banker\'s Acceptance'),
('MONEY_MARKET', 'Money Market', 'REPURCHASE_AGREEMENT', 'Repurchase Agreement'),
('MONEY_MARKET', 'Money Market', 'FEDERAL_FUNDS', 'Federal Funds'),
('MONEY_MARKET', 'Money Market', 'EURODOLLAR_DEPOSIT', 'Eurodollar Deposit'),

-- FUND Asset Class
('FUND', 'Fund', 'MUTUAL_FUND', 'Mutual Fund'),
('FUND', 'Fund', 'ETF', 'Exchange-Traded Fund'),
('FUND', 'Fund', 'ETN', 'Exchange-Traded Note'),
('FUND', 'Fund', 'INDEX_FUND', 'Index Fund'),
('FUND', 'Fund', 'MONEY_MARKET_FUND', 'Money Market Fund'),
('FUND', 'Fund', 'TARGET_DATE_FUND', 'Target Date Fund'),
('FUND', 'Fund', 'BALANCED_FUND', 'Balanced Fund'),
('FUND', 'Fund', 'CRYPTOCURRENCY_FUND', 'Cryptocurrency Fund'),
('FUND', 'Fund', 'CRYPTOCURRENCY_ETF', 'Cryptocurrency ETF'),

-- ALTERNATIVE Asset Class
('ALTERNATIVE', 'Alternative', 'PRIVATE_EQUITY_FUND', 'Private Equity Fund'),
('ALTERNATIVE', 'Alternative', 'PRIVATE_COMPANY', 'Private Company'),
('ALTERNATIVE', 'Alternative', 'VENTURE_CAPITAL_FUND', 'Venture Capital Fund'),
('ALTERNATIVE', 'Alternative', 'BUYOUT_FUND', 'Buyout Fund'),
('ALTERNATIVE', 'Alternative', 'GROWTH_EQUITY_FUND', 'Growth Equity Fund'),
('ALTERNATIVE', 'Alternative', 'PRIVATE_DEBT_FUND', 'Private Debt Fund'),
('ALTERNATIVE', 'Alternative', 'PRIVATE_CREDIT', 'Private Credit'),
('ALTERNATIVE', 'Alternative', 'DIRECT_LENDING', 'Direct Lending'),
('ALTERNATIVE', 'Alternative', 'MEZZANINE_DEBT', 'Mezzanine Debt'),
('ALTERNATIVE', 'Alternative', 'DISTRESSED_DEBT_FUND', 'Distressed Debt Fund'),
('ALTERNATIVE', 'Alternative', 'HEDGE_FUND', 'Hedge Fund'),
('ALTERNATIVE', 'Alternative', 'FUND_OF_HEDGE_FUNDS', 'Fund of Hedge Funds'),
('ALTERNATIVE', 'Alternative', 'REAL_ESTATE_FUND', 'Real Estate Fund'),
('ALTERNATIVE', 'Alternative', 'DIRECT_REAL_ESTATE', 'Direct Real Estate'),
('ALTERNATIVE', 'Alternative', 'INFRASTRUCTURE_FUND', 'Infrastructure Fund'),
('ALTERNATIVE', 'Alternative', 'COMMODITY_FUND', 'Commodity Fund'),

-- COMMODITY Asset Class
('COMMODITY', 'Commodity', 'CRUDE_OIL', 'Crude Oil'),
('COMMODITY', 'Commodity', 'NATURAL_GAS', 'Natural Gas'),
('COMMODITY', 'Commodity', 'GOLD', 'Gold'),
('COMMODITY', 'Commodity', 'SILVER', 'Silver'),
('COMMODITY', 'Commodity', 'COPPER', 'Copper'),
('COMMODITY', 'Commodity', 'WHEAT', 'Wheat'),
('COMMODITY', 'Commodity', 'CORN', 'Corn'),
('COMMODITY', 'Commodity', 'SOYBEANS', 'Soybeans'),
('COMMODITY', 'Commodity', 'CATTLE', 'Cattle'),
('COMMODITY', 'Commodity', 'COFFEE', 'Coffee'),

-- FOREIGN_EXCHANGE Asset Class
('FOREIGN_EXCHANGE', 'Foreign Exchange', 'SPOT_FX', 'Spot Foreign Exchange'),
('FOREIGN_EXCHANGE', 'Foreign Exchange', 'FORWARD_FX', 'Forward Foreign Exchange'),
('FOREIGN_EXCHANGE', 'Foreign Exchange', 'FX_SWAP', 'Foreign Exchange Swap'),
('FOREIGN_EXCHANGE', 'Foreign Exchange', 'CURRENCY_FUTURE', 'Currency Future'),
('FOREIGN_EXCHANGE', 'Foreign Exchange', 'CURRENCY_OPTION', 'Currency Option'),

-- CASH Asset Class
('CASH', 'Cash', 'CASH', 'Cash'),
('CASH', 'Cash', 'DEMAND_DEPOSIT', 'Demand Deposit'),
('CASH', 'Cash', 'SAVINGS_ACCOUNT', 'Savings Account'),
('CASH', 'Cash', 'MONEY_MARKET_ACCOUNT', 'Money Market Account'),
('CASH', 'Cash', 'PAYABLES', 'Accounts Payable'),
('CASH', 'Cash', 'RECEIVABLES', 'Accounts Receivable'),
('CASH', 'Cash', 'ACCRUED_INTEREST', 'Accrued Interest'),
('CASH', 'Cash', 'GENERAL_LEDGER', 'General Ledger Position'),

-- CRYPTOCURRENCY Asset Class
('CRYPTOCURRENCY', 'Cryptocurrency', 'CRYPTOCURRENCY', 'Cryptocurrency'),
('CRYPTOCURRENCY', 'Cryptocurrency', 'STABLECOIN', 'Stablecoin');


