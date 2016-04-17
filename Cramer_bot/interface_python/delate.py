

#user enters source and it deletes across all fields



#user enters ticker and it deletes any reference from across all fields
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


def user_delete(ticker):
	conn.execute("DELETE FROM FoundInfo WHERE ticker = (%s)", ticker)
	conn.execute("DELETE FROM StockInformation WHERE ticker = (%s)", ticker)
	conn.execute("DELETE FROM StockPerformance WHERE ticker = (%s)", ticker)


