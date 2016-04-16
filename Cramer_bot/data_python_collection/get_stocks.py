import googlefinance
from googlefinance import getQuotes
import json

#takes a stock ticker and prints in json format the information of that stock
def json_stock_info(ticker):
    return json.dumps(getQuotes(ticker), indent=2)

print(json_stock_info('AAPL'))