
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
    result = conn.execute("SELECT si.LastPrice, S.SOURCE, si.TimesMentioned, sp.OverallDifference, sp.DaysSinceLastUpdate\n"
                          "					FROM StockInformation AS si, StockPerformance AS sp, Source as S\n"
                          "					WHERE si.TICKER = (%s) AND sp.TICKER = (%s) and S.id = si.SourceID",
                          ticker, ticker)
    for row in result:
        return ("Stock Price, Source, Times Mentioned, Price Difference, Days Since Last Update\n" + str(row))


def getTickerList():
    tickerList = []
    list = conn.execute("SELECT TICKER FROM JimCramerStocks.StockInformation;")
    for ticker in list:

        tickerList.append(str(ticker)[2:-3])
    return tickerList

def getSourceList():
    sourceList = []
    list = conn.execute("SELECT source FROM JimCramerStocks.Source;")
    for source in list:
        sourceList.append('@' + str(source)[2:-10])
    sourceList.remove('@')
    return sourceList

#print getTickerList()
#print getSourceList()
#all_stock_into('$AAPL')