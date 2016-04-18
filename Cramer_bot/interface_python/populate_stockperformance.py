
import datetime
import yahoo_finance



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

tableName = "StockInformation"


# Connect to the database
conn = create_engine('mysql://{0[userName]}:{0[password]}@{0[serverName]}:{0[portNumber]}/{0[dbName]}'.format(settings))

def create_table(csv_file):
    tableName = csv_file
    metadata = MetaData(conn)
    tablecreate = Table(tableName, metadata,
                     Column('TICKER', VARCHAR(45), primary_key= True),
                     Column('PriceDifference', FLOAT),
                     Column('DAYS', FLOAT),
                    extend_existing=True)
    #tablecreate.create()
    return(tablecreate)

tableN = create_table('StockPerformance')




def update_StockPerformance():
    # Select data from the table
    select_string = "SELECT TICKER, LastPrice, TimesMentioned, LastUpdate FROM {}".format(tableName)
    for (TICKER, LastPrice, TimesMentioned, LastUpdate) in conn.execute(select_string):
        yahooStock = yahoo_finance.Share(TICKER[1:])
        currprice = yahooStock.get_price()
        timediff = datetime.datetime.now() - LastUpdate
        if currprice:
            price = float(currprice) - LastPrice
        else:
            price = null
        print TICKER, price , timediff.days


        insert_string = tableN.insert().prefix_with("IGNORE")

        conn.execute(insert_string, TICKER=TICKER,
                                 PriceDifference=price,
                                 DAYS=timediff.days)