use JimCramerStocks;

CREATE TABLE entries(
  `DATES` varchar(45) NOT NULL,
  `TICKER` varchar(45) NOT NULL,
  `PRICE` float DEFAULT NULL,
  `SourceID` int NOT NULL,
  PRIMARY KEY (`DATES`,`TICKER`,`SourceID`),
  constraint foreign key (SourceID) references Source (id) ON Update CASCADE ON DELETE NO ACTION);
  

INSERT INTO entries (DATES, TICKER, PRICE, SourceID)
SELECT DATES, TICKER, PRICE, s.id 
FROM TVShowEntries, Source as s
WHERE TVShowEntries.source = s.source;


INSERT INTO entries (DATES, TICKER, PRICE, SourceID)
SELECT DATES, TICKER, PRICE, s.id 
FROM ReporterEntries, Source as s
WHERE ReporterEntries.source = s.source;



CREATE TABLE  Source(
	id int auto_increment not null, 
    source varchar(45) not null,
    numTweets int not null,
    primary key(id));

INSERT INTO Source (source, numTweets)
SELECT tv.SOURCE, count(tv.SOURCE)
FROM entries as tv
GROUP BY tv.SOURCE;

UPDATE Source JOIN entries
    ON Source.id = entries.SourceID
SET Source.numTweets = count(entries.SourceID);



Insert into Source (source, numTweets)
SELECT re.source as `source`, count(re.source)
FROM ReporterEntries as re
GROUP BY re.source;

CREATE TABLE StockInformation(
	`TICKER` VARCHAR(45), 
    `LastPrice` FLOAT, 
    `TimesMentioned` BIGINT(21), 
    `LastUpdate` DATETIME,
    `FirstDate` DATETIME,
    `SourceID` int not null,
    primary key (`TICKER`),
    constraint foreign key (SourceID) references Source (id) ON Update CASCADE ON DELETE NO ACTION);






Create table test_table(
  `TICKER` VARCHAR(45) NULL,
  `coun` INT NULL,
  `dmax` DATETIME NULL,
  `dmin` DATETIME NULL);

Insert INTO test_table (TICKER, coun, dmax, dmin) 
Select distinct(tv.ticker) as TICKER, count(tv.ticker) as coun, max(tv.dates) as dmax, min(tv.dates) as dmin
from entries as tv
group by tv.ticker
ON DUPLICATE KEY UPDATE
    coun = coun + 1,
    dmax = max(tv.dates),
    dmin = min(tv.dates);

INSERT IGNORE INTO StockInformation (TICKER, LastPrice, TimesMentioned, LastUpdate, FirstDate, SourceID)
SELECT distinct(tt.ticker) as TICKER, tv.PRICE as LastPrice , tt.coun as TimesMentioned, tt.dmax as LastUpdate, tt.dmin as FirstDate, tv.SourceID
FROM test_table as tt JOIN entries as tv ON tt.ticker = tv.ticker
WHERE tt.dmax = tv.dates;


select * from StockInformation;