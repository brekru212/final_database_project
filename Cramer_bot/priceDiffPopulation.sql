CREATE TABLE StockPerformance(
	TICKER varchar(45) NOT NULL,
    OverallDifference int not null,
    #LastUpdateDifference int not null, 
    DaysSinceLastUpdate int not null Default 0,
    primary key(TICKER),
    constraint foreign key (TICKER) references StockInformation (TICKER) ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE priceMin (
	TICKER varchar(45) NOT NULL,
    PRICE int NOT NULL,
    DATES datetime,
    primary key (TICKER)
)
SELECT si.TICKER, tv.price , si.FirstDate
FROM StockInformation as si JOIN entries as tv ON si.ticker = tv.ticker
WHERE si.FirstDate = tv.dates
GROUP BY si.TICKER, tv.price;

CREATE TABLE priceMax (
	TICKER varchar(45) NOT NULL,
    PRICE int NOT NULL,
    DATES datetime,
    primary key (TICKER)
);

select * from priceMax;

INSERT IGNORE INTO priceMax (TICKER, PRICE, DATES)
SELECT si.TICKER, si.LastPrice as Price , si.LastUpdate as dates
FROM StockInformation as si
GROUP BY Ticker;


INSERT ignore INTO StockPerformance (TICKER, OverallDifference, DaysSinceLastUpdate) 
SELECT si.ticker, (pma.PRICE - pmi.PRICE) as OverallDifference, datediff(now(), si.LastUpdate)  as DaysSinceLastUpdate
FROM StockInformation as si, priceMin as pmi, priceMax as pma
WHERE si.ticker = pma.ticker and si.ticker = pmi.ticker;



CREATE TABLE temp_table (
    `TICKER` VARCHAR(45) NULL,
    `coun` INT NULL,
    `dmax` DATETIME NULL,
    `dmin` DATETIME NULL
) SELECT DISTINCT (tv.ticker) AS TICKER,
    COUNT(tv.ticker) AS coun,
    MAX(tv.dates) AS dmax,
    MIN(tv.dates) AS dmin
 FROM
    entries AS tv
GROUP BY tv.ticker;
                
    
CREATE TABLE StockInformation (
    `TICKER` VARCHAR(45),
    `LastPrice` FLOAT,
    `TimesMentioned` BIGINT(21),
    `LastUpdate` DATETIME,
    `FirstDate` DATETIME,
    `SourceID` INT NOT NULL,
    PRIMARY KEY (`TICKER`),
    CONSTRAINT FOREIGN KEY (SourceID)
        REFERENCES Source (id)
        ON UPDATE CASCADE ON DELETE NO ACTION
);
    

INSERT IGNORE INTO StockInformation (TICKER, LastPrice, TimesMentioned, LastUpdate, FirstDate, SourceID)
SELECT distinct(tt.ticker) as TICKER, tv.PRICE as LastPrice , tt.coun as TimesMentioned, tt.dmax as LastUpdate, tt.dmin as FirstDate, tv.SourceID
FROM temp_table as tt JOIN entries as tv ON tt.ticker = tv.ticker
WHERE tt.dmax = tv.dates;
    
DROP TABLE temp_table;
    
    CREATE TABLE priceMin (
	TICKER varchar(45) NOT NULL,
    PRICE int NOT NULL,
    DATES datetime,
    primary key (TICKER)
)
SELECT si.TICKER, tv.price , si.FirstDate
FROM StockInformation as si JOIN entries as tv ON si.ticker = tv.ticker
WHERE si.FirstDate = tv.dates
GROUP BY si.TICKER, tv.price;

    
CREATE TABLE priceMax (
	TICKER varchar(45) NOT NULL,
    PRICE int NOT NULL,
    DATES datetime,
    primary key (TICKER)
)
SELECT si.TICKER, si.LastPrice as Price , si.LastUpdate as dates
FROM StockInformation as si
GROUP BY Ticker;

    
    CREATE TABLE StockPerformance(
	TICKER varchar(45) NOT NULL,
    OverallDifference int not null,
    #LastUpdateDifference int not null,
    DaysSinceLastUpdate int not null Default 0,
    primary key(TICKER),
    constraint foreign key (TICKER) references StockInformation (TICKER) ON UPDATE CASCADE ON DELETE CASCADE);
    
    
   INSERT ignore INTO StockPerformance (TICKER, OverallDifference, DaysSinceLastUpdate)
SELECT si.ticker, (pma.PRICE - pmi.PRICE) as OverallDifference, datediff(now(), si.LastUpdate)  as DaysSinceLastUpdate
FROM StockInformation as si, priceMin as pmi, priceMax as pma
WHERE si.ticker = pma.ticker and si.ticker = pmi.ticker;
    

DROP TABLE priceMin;
DROP TABLE priceMax;
    
    UPDATE
    Source AS s
    LEFT JOIN (
        SELECT
            SourceID,
            count(SourceID) as numTweets
        FROM
            entries
        GROUP BY
            SourceID
    ) AS m ON
        m.SourceID = s.id
SET
    s.numTweets = m.numTweets
WHERE
     s.SOURCE = 'jimcramer_tweets';
    



