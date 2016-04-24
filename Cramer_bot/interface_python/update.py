import os
from Cramer_bot.data_python_collection.get_tweets import run_tweet_to_table
from Cramer_bot.data_python_collection.conn_auth import get_dbConn

conn = get_dbConn()

#auto is user puts in a ticker and it automatically updates across
def auto_update(source):
    run_tweet_to_table(source, conn)
    print('done with inserting into entry table')
    conn.execute("""
INSERT INTO StockInformation (TICKER, LastPrice, TimesMentioned, LastUpdate, FirstDate, SourceID)
SELECT distinct(tt.ticker) as TICKER, tv.PRICE as LastPrice , tt.coun as TimesMentioned, tt.dmax as LastUpdate, tt.dmin as FirstDate, tv.SourceID
FROM test_table as tt JOIN entries as tv ON tt.ticker = tv.ticker
WHERE tt.dmax = tv.dates
ON DUPLICATE KEY UPDATE
    LastPrice = IF(LastUpdate < tt.dmax, tt.maxPrice, LastPrice),
    LastUpdate = IF(LastUpdate < tt.dmax, tt.dmax, LastUpdate),
    TimesMentioned = TimesMentioned + tt.coun;
    """)
    print('done with inserting into stock info table')
    conn.execute("""
   INSERT INTO StockPerformance (TICKER, OverallDifference, DaysSinceLastUpdate)
SELECT tt.ticker, (tt.maxPrice - tt.minPRICE) as OverallDifference, datediff(now(), tt.dmax)  as DaysSinceLastUpdate
FROM test_table as tt, StockInformation as si
ON DUPLICATE KEY UPDATE
    OverallDifference = IF (datediff(now(), tt.dmax) < DaysSinceLastUpdate,  tt.maxPrice - tt.minPRICE, OverallDifference),
    DaysSinceLastUpdate = IF (datediff(now(), tt.dmax) < DaysSinceLastUpdate, datediff(now(), tt.dmax), DaysSinceLastUpdate);
    """)
    print('done with inserting into stock perf table')
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
#@jimcramer 4/20
      #                 , , '@StockTwits']'@Benzinga'
#'@MadMoneyOnCNBC'. '@SquawkAlley', '@Squawkstreet', '@SquawkCNBC' '@CNBCClosingBell', '@CNBCFastMoney','@HalftimeReport' 4/18
# '@kaylatausche''@davidfaber' , 4/13
# '@MelissaLeeCNBC', '@ScottapnerCNBC'
listSN = [ '@CNBCClosingBell', '@CNBCFastMoney', '@MadMoneyOnCNBC', '@SquawkAlley', '@Squawkstreet',
        '@davidfaber', '@SquawkCNBC', '@HalftimeReport', '@kaylatausche','@MelissaLeeCNBC', '@kaylatausche', '@davidfaber']
#'@kaylatausche'

#for x in listSN:
 #   auto_update(x)

