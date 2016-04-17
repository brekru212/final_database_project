
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


def all_stock_into(ticker):
    result = conn.execute("SELECT f.LastPrice, f.SOURCE, si.TimesMentioned, sp.PriceDifference, sp.DAYS\n"
                          "					FROM FoundInfo AS f, StockInformation AS si, StockPerformance AS sp\n"
                          "					WHERE f.TICKER = (%s) AND si.TICKER = (%s) AND sp.TICKER = (%s)",
                          ticker, ticker, ticker)
    for row in result:
        return ("Stock Price, Source, Times Mentioned, Price Difference, Days In Current Trend\n" + str(row))


def getTickerList():
    tickerList = []
    list = conn.execute("SELECT TICKER FROM JimCramerStocks.FoundInfo;")
    for ticker in list:

        tickerList.append(str(ticker)[2:-3])
    return tickerList

