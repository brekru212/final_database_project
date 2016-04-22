import os
import populate_stockperformance as dpc
from Cramer_bot.data_python_collection.get_tweets import run_tweet_to_table
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
def auto_update(source):
    print 'worked'
    print source
    run_tweet_to_table(source)

    conn.execute("""
   INSERT INTO StockPerformance (TICKER, OverallDifference, DaysSinceLastUpdate)
SELECT tt.ticker, (tt.maxPrice - tt.minPRICE) as OverallDifference, datediff(now(), tt.dmax)  as DaysSinceLastUpdate
FROM test_table as tt, StockInformation as si
ON DUPLICATE KEY UPDATE
    OverallDifference = tt.maxPrice - si.LastPrice,
    DaysSinceLastUpdate = datediff(now(), tt.dmax);
    """)
    conn.execute("""
INSERT INTO StockInformation (TICKER, LastPrice, TimesMentioned, LastUpdate, FirstDate, SourceID)
SELECT distinct(tt.ticker) as TICKER, tv.PRICE as LastPrice , tt.coun as TimesMentioned, tt.dmax as LastUpdate, tt.dmin as FirstDate, tv.SourceID
FROM test_table as tt JOIN entries as tv ON tt.ticker = tv.ticker
WHERE tt.dmax = tv.dates
ON DUPLICATE KEY UPDATE
    LastPrice = tt.maxPrice,
    LastUpdate = tt.dmax,
    TimesMentioned = TimesMentioned + tt.coun;
    """)
    #
    conn.execute("""
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
     s.SOURCE = '%s';
    """ %(source[1:] + '_tweets'))
    conn.execute("DROP TABLE TempEntries")
    conn.execute("DROP TABLE test_table")
    os.remove(source[1:] + '_tweets.csv')


#user is user puts in a ticker and price it updates in found info
def user_update(ticker, price):
    lastPrice = conn.execute("SELECT lastPrice FROM StockInformation WHERE TICKER = (%s)", ticker)
    for pr in lastPrice:
        # should only be one entry
        lPrice = str(pr)[1:-2]

    priceDiff = price - float(lPrice)
    conn.execute("UPDATE StockInformation SET StockInformation.lastPrice = (%s), "
                 "StockInformation.timesMentioned = StockInformation.timesMentioned+1, "
                 "LastUpdate = now() WHERE StockInformation.ticker = (%s)", price ,ticker)
    conn.execute("UPDATE StockPerformance SET StockPerformance.OverallDifference = (%s), "
                 "StockPerformance.DaysSinceLastUpdate = 0 WHERE StockPerformance.ticker = (%s)", priceDiff ,ticker)


#user_update('test', 20)

#auto_update('@CNBCFastMoney')