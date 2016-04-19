
import populate_stockperformance as dpc

from sqlalchemy import *

username = "nope"
password = "nope"
dbn = "JimCramerStocks"
# Connection settings
settings = {
    'userName': username,           # The name of the MySQL account to use (or empty for anonymous)
    'password': password,           # The password for the MySQL account (or empty for anonymous)
    'serverName': "localhost",    # The name of the computer running MySQL
    'portNumber': 3306,           # The port of the MySQL server (default is 3306)
    'dbName': dbn,             # The name of the database we are testing with (this default is installed with MySQL)
}

conn = create_engine('mysql://{0[userName]}:{0[password]}@{0[serverName]}:{0[portNumber]}/{0[dbName]}'.format(settings))
# Connect to the database

#auto is user puts in a ticker and it automatically updates across
def auto_update():
    conn.execute("""INSERT INTO StockInformation(TICKER, LastPrice, TimesMentioned, DateModified)
    select distinct(re.ticker) as TICKER, Price as LastPrice, count(ticker) as coun, max(Dates) as DateModified
    From ReporterEntries as re
    right outer join
(select distinct(ticker) as tick, count(ticker) as coun, max(dates) as da
from ReporterEntries
group by tick) as a
on re.dates = a.da and a.coun = coun
where a.da is not null
group by re.ticker, re.price
ON DUPLICATE KEY UPDATE
    LastPrice = LastPrice,
    DateModified = DateModified,
    TimesMentioned = (StockInformation.TimesMentioned + 1);
    """)
    conn.execute("""
insert into FoundInfo
SELECT
    SI.TICKER AS TICKER,

    SI.LastPrice AS LastPrice,
    sou.source as SOURCE,
    min(re.da) AS DateAdded,
    SI.DateModified AS DateModified
FROM
    StockInformation AS SI
        LEFT OUTER JOIN
    (SELECT DISTINCT
        (ticker) AS tick, MIN(dates) AS da
    FROM
        ReporterEntries
    GROUP BY ReporterEntries.TICKER) AS re ON SI.TICKER = re.tick
        LEFT OUTER JOIN
    (SELECT DISTINCT
        (ticker) AS tick, source, MAX(dates) AS da
    FROM
        ReporterEntries
    GROUP BY tick, source) AS sou ON SI.ticker = sou.tick and SI.DateModified = sou.da
GROUP BY SI.TICKER , SI.DateModified , SI.LastPrice ,sou.source, re.da
ON DUPLICATE KEY UPDATE
    LastPrice = LastPrice,
    SOURCE = SOURCE,
    DateModified = DateModified;
    """)
    dpc.update_StockPerformance()



#user is user puts in a ticker and price it updates in found info
def user_update(ticker, price):
    lastPrice = conn.execute("SELECT lastPrice FROM StockInformation WHERE TICKER = (%s)", ticker)
    for pr in lastPrice:
        # should only be one entry
        lPrice = str(pr)[1:-2]

    priceDiff = price - float(lPrice)
    conn.execute("UPDATE FoundInfo SET FoundInfo.LastPrice = (%s), FoundInfo.Source = (%s), "
                 "DateModified = now() WHERE FoundInfo.TICKER = (%s)", price, 'User Input', ticker)
    conn.execute("UPDATE StockInformation SET StockInformation.lastPrice = (%s), "
                 "StockInformation.timesMentioned = StockInformation.timesMentioned+1, "
                 "DateModified = now() WHERE StockInformation.ticker = (%s)", price ,ticker)
    conn.execute("UPDATE StockPerformance SET StockPerformance.priceDifference = (%s), "
                 "StockPerformance.days = 0 WHERE StockPerformance.ticker = (%s)", priceDiff ,ticker)


