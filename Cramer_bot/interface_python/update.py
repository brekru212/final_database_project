
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




#user is user puts in a ticker and price it updates in found info
def user_update(ticker, price):
    lastPrice = conn.execute("SELECT lastPrice FROM StockInformation WHERE TICKER = (%s)", ticker)
    for pr in lastPrice:
        # should only be one entry
        lPrice = str(pr)[1:-2]

    priceDiff = price - float(lPrice)
    conn.execute("UPDATE FoundInfo SET FoundInfo.LastPrice = (%s), FoundInfo.Source = (%s), DateModified = now() WHERE FoundInfo.TICKER = (%s)", price, 'User Input', ticker)
    conn.execute("UPDATE StockInformation SET StockInformation.lastPrice = (%s), StockInformation.timesMentioned = StockInformation.timesMentioned+1, DateModified = now() WHERE StockInformation.ticker = (%s)", price ,ticker)
    conn.execute("UPDATE StockPerformance SET StockPerformance.priceDifference = (%s), StockPerformance.days = 0 WHERE StockPerformance.ticker = (%s)", priceDiff ,ticker)


