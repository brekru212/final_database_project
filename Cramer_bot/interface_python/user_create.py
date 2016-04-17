#user inputs ticker and it creates a new entry into FoundInfo table


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
    conn.execute("INSERT INTO FoundInfo (`ticker`, `LastPrice`, `SOURCE`, `DateAdded`, `DateModified`) VALUES ((%s), (%s), 'User Input', NOW(), NOW())", ticker, price)
    conn.execute("INSERT INTO StockInformation (`TICKER`, `LastPrice`, `TimesMentioned`, `DateModified`) VALUES ((%s), (%s), 1 , NOW())", ticker, price)
    conn.execute("INSERT INTO StockPerformance (`TICKER`, `PriceDifference`, `DAYS`) VALUES ((%s), 0, 1)", ticker)

