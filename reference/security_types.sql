/*

Filename: 	security_type.sql
Purpose: 	Create and populate a reference table with common security types.
Data Source:	proprietary
Notes:		--
Database: 	Snowflake
Author: 	Jason Inzer

*/

create schema if not exists reference;

CREATE TABLE reference.security_types (
  security_type_code VARCHAR(30) PRIMARY KEY NOT NULL, -- COMMON_STOCK, CORPORATE_BOND, etc.
  security_type_name VARCHAR(60) NOT NULL,
  asset_class_code VARCHAR(20) NOT NULL,
  created_at TIMESTAMP_NTZ DEFAULT SYSDATE(),
  
  -- Foreign key to asset class master table
  FOREIGN KEY (asset_class_code) REFERENCES reference.asset_class(asset_class_code)
);

-- Insert all security types with their asset class mappings
INSERT INTO reference.security_types (security_type_code, security_type_name, asset_class_code) VALUES

-- EQUITY Security Types
('COMMON_STOCK', 'Common Stock', 'EQUITY'),
('PREFERRED_STOCK', 'Preferred Stock', 'EQUITY'),
('CONVERTIBLE_PREFERRED', 'Convertible Preferred Stock', 'EQUITY'),
('ADR', 'American Depositary Receipt', 'EQUITY'),
('GDR', 'Global Depositary Receipt', 'EQUITY'),
('REIT', 'Real Estate Investment Trust', 'EQUITY'),
('BDC', 'Business Development Company', 'EQUITY'),
('MLP', 'Master Limited Partnership', 'EQUITY'),
('CLOSED_END_FUND', 'Closed-End Fund', 'EQUITY'),
('WARRANT', 'Warrant', 'EQUITY'),

-- FIXED_INCOME Security Types
('TREASURY_BILL', 'Treasury Bill', 'FIXED_INCOME'),
('TREASURY_NOTE', 'Treasury Note', 'FIXED_INCOME'),
('TREASURY_BOND', 'Treasury Bond', 'FIXED_INCOME'),
('TIPS', 'Treasury Inflation-Protected Security', 'FIXED_INCOME'),
('MUNICIPAL_BOND', 'Municipal Bond', 'FIXED_INCOME'),
('CORPORATE_BOND', 'Corporate Bond', 'FIXED_INCOME'),
('HIGH_YIELD_BOND', 'High Yield Bond', 'FIXED_INCOME'),
('CONVERTIBLE_BOND', 'Convertible Bond', 'FIXED_INCOME'),
('FLOATING_RATE_NOTE', 'Floating Rate Note', 'FIXED_INCOME'),
('ZERO_COUPON_BOND', 'Zero Coupon Bond', 'FIXED_INCOME'),
('GOVERNMENT_AGENCY_BOND', 'Government Agency Bond', 'FIXED_INCOME'),
('SOVEREIGN_BOND', 'Sovereign Bond', 'FIXED_INCOME'),
('EUROBOND', 'Eurobond', 'FIXED_INCOME'),
('MBS', 'Mortgage-Backed Security', 'FIXED_INCOME'),
('ABS', 'Asset-Backed Security', 'FIXED_INCOME'),
('CMBS', 'Commercial Mortgage-Backed Security', 'FIXED_INCOME'),
('CDO', 'Collateralized Debt Obligation', 'FIXED_INCOME'),
('COVERED_BOND', 'Covered Bond', 'FIXED_INCOME'),

-- DERIVATIVE Security Types
('CALL_OPTION', 'Call Option', 'DERIVATIVE'),
('PUT_OPTION', 'Put Option', 'DERIVATIVE'),
('FUTURES_CONTRACT', 'Futures Contract', 'DERIVATIVE'),
('EQUITY_INDEX_FUTURE', 'Equity Index Future', 'DERIVATIVE'),
('CURRENCY_FUTURE', 'Currency Future', 'DERIVATIVE'),
('COMMODITY_FUTURE', 'Commodity Future', 'DERIVATIVE'),
('INTEREST_RATE_FUTURE', 'Interest Rate Future', 'DERIVATIVE'),
('BOND_FUTURE', 'Bond Future', 'DERIVATIVE'),
('SINGLE_STOCK_FUTURE', 'Single Stock Future', 'DERIVATIVE'),
('FORWARD_CONTRACT', 'Forward Contract', 'DERIVATIVE'),
('INTEREST_RATE_SWAP', 'Interest Rate Swap', 'DERIVATIVE'),
('CURRENCY_SWAP', 'Currency Swap', 'DERIVATIVE'),
('CREDIT_DEFAULT_SWAP', 'Credit Default Swap', 'DERIVATIVE'),
('EQUITY_SWAP', 'Equity Swap', 'DERIVATIVE'),
('COMMODITY_SWAP', 'Commodity Swap', 'DERIVATIVE'),
('STRUCTURED_NOTE', 'Structured Note', 'DERIVATIVE'),
('STRUCTURED_PRODUCT', 'Structured Product', 'DERIVATIVE'),

-- MONEY_MARKET Security Types
('COMMERCIAL_PAPER', 'Commercial Paper', 'MONEY_MARKET'),
('CERTIFICATE_OF_DEPOSIT', 'Certificate of Deposit', 'MONEY_MARKET'),
('BANKERS_ACCEPTANCE', 'Banker\'s Acceptance', 'MONEY_MARKET'),
('REPURCHASE_AGREEMENT', 'Repurchase Agreement', 'MONEY_MARKET'),
('FEDERAL_FUNDS', 'Federal Funds', 'MONEY_MARKET'),
('EURODOLLAR_DEPOSIT', 'Eurodollar Deposit', 'MONEY_MARKET'),

-- FUND Security Types
('MUTUAL_FUND', 'Mutual Fund', 'FUND'),
('ETF', 'Exchange-Traded Fund', 'FUND'),
('ETN', 'Exchange-Traded Note', 'FUND'),
('INDEX_FUND', 'Index Fund', 'FUND'),
('MONEY_MARKET_FUND', 'Money Market Fund', 'FUND'),
('TARGET_DATE_FUND', 'Target Date Fund', 'FUND'),
('BALANCED_FUND', 'Balanced Fund', 'FUND'),
('CRYPTOCURRENCY_FUND', 'Cryptocurrency Fund', 'FUND'),
('CRYPTOCURRENCY_ETF', 'Cryptocurrency ETF', 'FUND'),
('BOND_FUND', 'Bond Fund', 'FUND'),
('EQUITY_FUND', 'Equity Fund', 'FUND'),

-- ALTERNATIVE Security Types
('PRIVATE_EQUITY_FUND', 'Private Equity Fund', 'ALTERNATIVE'),
('PRIVATE_COMPANY', 'Private Company', 'ALTERNATIVE'),
('VENTURE_CAPITAL_FUND', 'Venture Capital Fund', 'ALTERNATIVE'),
('BUYOUT_FUND', 'Buyout Fund', 'ALTERNATIVE'),
('GROWTH_EQUITY_FUND', 'Growth Equity Fund', 'ALTERNATIVE'),
('PRIVATE_DEBT_FUND', 'Private Debt Fund', 'ALTERNATIVE'),
('PRIVATE_CREDIT', 'Private Credit', 'ALTERNATIVE'),
('DIRECT_LENDING', 'Direct Lending', 'ALTERNATIVE'),
('MEZZANINE_DEBT', 'Mezzanine Debt', 'ALTERNATIVE'),
('DISTRESSED_DEBT_FUND', 'Distressed Debt Fund', 'ALTERNATIVE'),
('HEDGE_FUND', 'Hedge Fund', 'ALTERNATIVE'),
('FUND_OF_HEDGE_FUNDS', 'Fund of Hedge Funds', 'ALTERNATIVE'),
('REAL_ESTATE_FUND', 'Real Estate Fund', 'ALTERNATIVE'),
('DIRECT_REAL_ESTATE', 'Direct Real Estate', 'ALTERNATIVE'),
('INFRASTRUCTURE_FUND', 'Infrastructure Fund', 'ALTERNATIVE'),
('COMMODITY_FUND', 'Commodity Fund', 'ALTERNATIVE'),

-- COMMODITY Security Types
('CRUDE_OIL', 'Crude Oil', 'COMMODITY'),
('NATURAL_GAS', 'Natural Gas', 'COMMODITY'),
('GOLD', 'Gold', 'COMMODITY'),
('SILVER', 'Silver', 'COMMODITY'),
('COPPER', 'Copper', 'COMMODITY'),
('WHEAT', 'Wheat', 'COMMODITY'),
('CORN', 'Corn', 'COMMODITY'),
('SOYBEANS', 'Soybeans', 'COMMODITY'),
('CATTLE', 'Cattle', 'COMMODITY'),
('COFFEE', 'Coffee', 'COMMODITY'),

-- FOREIGN_EXCHANGE Security Types
('SPOT_FX', 'Spot Foreign Exchange', 'FOREIGN_EXCHANGE'),
('FORWARD_FX', 'Forward Foreign Exchange', 'FOREIGN_EXCHANGE'),
('FX_SWAP', 'Foreign Exchange Swap', 'FOREIGN_EXCHANGE'),
('CURRENCY_OPTION', 'Currency Option', 'FOREIGN_EXCHANGE'),

-- CASH Security Types
('CASH', 'Cash', 'CASH'),
('DEMAND_DEPOSIT', 'Demand Deposit', 'CASH'),
('SAVINGS_ACCOUNT', 'Savings Account', 'CASH'),
('MONEY_MARKET_ACCOUNT', 'Money Market Account', 'CASH'),
('GENERAL_LEDGER', 'General Ledger Position', 'CASH'),
('PAYABLES', 'Accounts Payable', 'CASH'),
('RECEIVABLES', 'Accounts Receivable', 'CASH'),
('ACCRUED_INTEREST', 'Accrued Interest', 'CASH'),

-- CRYPTOCURRENCY Security Types
('CRYPTOCURRENCY', 'Cryptocurrency', 'CRYPTOCURRENCY'),
('STABLECOIN', 'Stablecoin', 'CRYPTOCURRENCY');

