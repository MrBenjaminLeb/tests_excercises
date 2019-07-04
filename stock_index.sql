-- Suggested testing environment:
-- http://sqlite.online/

-- Example case create statement:
CREATE TABLE fsia (
  companyName VARCHAR(30) NOT NULL PRIMARY KEY,
  marketCapitalization FLOAT NOT NULL
);

CREATE TABLE fsib (
  companyName VARCHAR(30) NOT NULL PRIMARY KEY,
  sharePrice FLOAT NOT NULL,
  sharesOutstanding INTEGER NOT NULL
);

INSERT INTO fsia(companyName, marketCapitalization) VALUES('Macaroni Inc.', 12500);
INSERT INTO fsia(companyName, marketCapitalization) VALUES('Universal Exports LLC', 10000);

INSERT INTO fsib(companyName, sharePrice, sharesOutstanding) VALUES('Fun Book Corporation', 8, 1000);
INSERT INTO fsib(companyName, sharePrice, sharesOutstanding) VALUES('Solitude Ltd.', 12.5, 600);
INSERT INTO fsib(companyName, sharePrice, sharesOutstanding) VALUES('Baggage Enterprise', 1.2, 2300);

-- Expected output:
-- companyName           marketCapitalization
-- ---------------------------------------------
-- Baggage Enterprise    12500 
-- Fun Book Corporation  10000 
-- Macaroni Inc.         8000 
-- Solitude Ltd.         7500 
-- Universal Exports LLC 2760  

-- Explanation:
-- In this example.
-- Baggage Enterprise is 
--the largest company, it therefore appears first in the results.
-- The companies descend

SELECT companyName, marketCapitalization
FROM fsia
FULL OUTER JOIN fsib
ON fsia.companyName = fsib.companyName
WHERE marketCapitalization = sharePrice*sharesOutstanding

