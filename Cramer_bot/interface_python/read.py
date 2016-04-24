

from Cramer_bot.data_python_collection.conn_auth import get_dbConn

conn = get_dbConn()

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