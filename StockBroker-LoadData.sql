/* StockBroker-LoadData.sql
 * Author: Rick Sweeney
 *
 * Tables:
    Clients (ClientID, FirstName, LastName, Address, Phone, Birth, DateLastContacted)
    Portfolios (PortfolioID, Client_id, Type)  
        -- Type = Regular, IRA, Roth, InheritedIRA, InheritedRoth, Trust)
    Stocks (StockID, StockName, StockExchange, ClosingPrice, PE) --can i use / in a name?
    StocksHeld (Stock_id, Portfolio_id, NumShares) 
    TradeLog (TradeID, datetime, Portfolio_id, Buy/Sell/TransferIn/TransferOut, Stock_id, Num, Price)
 */
 
INSERT INTO Clients --- WILL PROBABLY DELETE LAST CONTACTED FIELD
VALUES  ('John', 'Smith','101 Elm St, Muncie, IN, 47306','765-289-5555','1980-10-01', '2021-10-12 11:10:00'),
        ('Jane', 'Doe', '200 Main St, Muncie, IN, 47306', '765-555-3232', '1975-09-24', '2021-09-16 13:30:00'),
        ('Henry', 'Miller', '300 10th St, Muncie, IN, 47306', '765-556-3442', '1985-03-24', '2021-09-16 10:30:00'),
        ('Alice', 'Cramden', '200 Main St, Muncie, IN, 47306', '765-555-3552', '1935-01-12', '2021-11-16 15:30:00'),
        ('Ed', 'Norton', '300 Sewer St, Muncie, IN, 47306', '765-555-3600', '1927-03-14', '2021-03-20 15:40:00');
GO

INSERT INTO Portfolios      -- Type = Regular, IRA, Roth, InheritedIRA, InheritedRoth, Trust)
VALUES (1, 'Roth'),
        (1, 'Regular'),
        (2, 'Regular'),
        (3, 'IRA'),
        (3, 'Regular'),
        (4, 'Regular'),
        (4, 'InheritedIRA'),
        (5, 'Regular'),
        (5, 'IRA');
GO


--Stocks (StockID, StockName, StockExchange, ClosingPrice, PE) 
INSERT INTO Stocks
VALUES ('GOOG', 'Alphabet Inc', 'NASDAQ', 2875.48, 27),
    ('F', 'Ford Motor Company', 'NASDAQ', 19.20, 27),
    ('DIS', 'Walt Disney Company (The)', 'NASDAQ', 175.63, 280),
    ('SNOW', 'Snowflake Inc', 'NASDAQ', 364.80, NULL),
    ('WMT', 'Walmart Inc.', 'NASDAQ', 152.23, 42),
    ('GS', 'Goldman Sachs Group (The), Inc', 'NASDAQ', 407.08, 7),
    ('HD', 'Home Depot, Inc', 'NYSE', 368.40, 26),
    ('HON', 'Honeywell International, Inc', 'NASDAQ', 226.06, 29),
    ('AMZN', 'Amazon.com, Inc', 'NASDAQ', 3517.99, 69),
    ('TSLA', 'Tesla, Inc.', 'NASDAQ', 1222.09, 396),
    ('VZ', 'Verizon Communications Inc', 'NYSE', 52.24, 10),
    ('SHOP', 'Shopify, Inc', 'NYSE', 1528.06, 57),
    ('CRM', 'Salesforce.com, Inc', 'NYSE', 307.25, 122),
    ('NVDA', 'NVIDIA Corporation', 'NASDAQ', 297.29, 106),
    ('TMUS', 'T-Mobile US, Inc', 'NASDAQ', 122.27, 46),
    ('ADBE', 'Adobe Inc.', 'NASDAQ', 661.90, 55),
    ('XPO', 'XPO Logistics, Inc.', 'NYSE', 78.60, 24),
    ('GM', 'General Motors Company', 'NYSE', 58.52, 8),
    ('KO', 'Coca-Cola Company (The)', 'NYSE',56.84, 28),
    ('LLY', 'Eli Lilly and Company', 'NYSE', 265, 40),
    ('LOW', 'Lowes Companies, Inc', 'NYSE', 235.54, 25),
    ('LVS', 'Las Vegas Sands Corp.', 'NYSE', 42.60, NULL),
    ('MCD', 'McDonalds Corp.', 'NYSE', 254.55, 26),
    ('MELI', 'MercadoLibre, Inc', 'NYSE', 1629.76, 1024),
    ('MRNA', 'Moderna, Inc', 'NASDAQ', 236.99, 14),
    ('NKE', 'Nike, Inc', 'NYSE', 177.51, 59),
    ('MU', 'Micron Technology, Inc', 'NASDAQ', 72.92, 14),
    ('NFLX', 'Netflix, Inc', 'NASDAQ', 645.52, 59),
    ('NOW', 'ServiceNow, Inc', 'NYSE', 692.01, 634),
    ('PEP', 'PepsiCo, Inc', 'NASDAQ', 165.51, 28),
    ('TGT', 'Target Corp.', 'NYSE', 254.27, 20),
    ('VIAC', 'ViacomCBS, Inc', 'NASDAQ', 36.34, 7),
    ('NOK', 'Nokia Corp.', 'NYSE', 5.77, NULL);
    GO

    --  StocksHeld (Stock_id, Portfolio_id, NumShares) 

INSERT INTO StocksHeld   
VALUES  (1, 2, 10),
        (1, 4, 10),
        (1, 8, 20),
        (1, 9, 10),
        (2, 1, 200),
        (2, 2, 100),
        (2, 3, 100),
        (2, 7, 100),
        (4, 6, 10),
        (5, 3, 100),
        (6, 5, 10),
        (7, 4, 10),
        (7, 6, 10),
        (7, 8, 10),
        (9, 2, 10),
        (9, 3, 1),
        (9, 5, 10),
        (9, 9, 10),
        (10, 4, 10),
        (10, 5, 10),
        (10, 7, 10),
        (11, 1, 200),
        (11, 6, 100),
        (11, 8, 100),
        (12, 6, 1),
        (12, 9, 10),
        (14, 5, 10),
        (14, 6, 10),
        (16, 1, 10),
        (16, 2, 10),
        (16, 4, 10),
        (16, 7, 10),
        (17, 2, 100),
        (17, 3, 100),
        (17, 9, 100),
        (18, 8, 100),
        (19, 1, 100),
        (19, 6, 100),
        (19, 7, 100),
        (21, 4, 10),
        (21, 4, 100),
        (21, 5, 100),
        (21, 9, 100),
        (22, 9, 100),
        (25, 2, 10),
        (25, 6, 10),
        (25, 9, 10),
        (28, 1, 10),
        (28, 3, 10),
        (28, 8, 1);
GO



--TEMPORARY FOR MY VERIFICATION
SELECT *
FROM Portfolios
GO

SELECT *
FROM Stocks
GO

SELECT *
FROM Clients
GO


SELECT *
FROM StocksHeld
GO

SELECT *
FROM TradeLog
GO