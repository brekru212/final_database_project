#user inputs ticker and it creates a new entry into FoundInfo table

import json
import re
import time
import datetime
import yahoo_finance
import signal
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

def user_create(ticker, price):

    conn.execute("INSERT INTO StockInformation (`TICKER`, `LastPrice`, `TimesMentioned`, `LastUpdate`, `FirstDate`, `SourceID`) "
                 "VALUES ((%s), (%s), 1 , NOW(), NOW(), 21)", ticker, price)
    conn.execute("Update Source Set numTweets = source.NumTweets + 1 Where source.ID = 21")
    conn.execute("INSERT INTO StockPerformance (`TICKER`, `OverallDifference`, `DaysSinceLastUpdate`) VALUES ((%s), 0, 1)", ticker)

#user_create('test', 5)