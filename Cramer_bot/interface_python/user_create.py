#user inputs ticker and it creates a new entry into FoundInfo table

from Cramer_bot.data_python_collection.conn_auth import get_dbConn

conn = get_dbConn()

def user_create(ticker, price):

    conn.execute("INSERT INTO StockInformation (`TICKER`, `LastPrice`, `TimesMentioned`, `LastUpdate`, `FirstDate`, `SourceID`) "
                 "VALUES ((%s), (%s), 1 , NOW(), NOW(), 21)", ticker, price)
    conn.execute("Update Source Set numTweets = source.NumTweets + 1 Where source.ID = 21")
    conn.execute("INSERT INTO StockPerformance (`TICKER`, `OverallDifference`, `DaysSinceLastUpdate`) VALUES ((%s), 0, 1)", ticker)

