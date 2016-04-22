import csv
import re
import time
import datetime
import yahoo_finance
import signal




from sqlalchemy import *

username = 'nope'
password = 'nope'
dbn = "JimCramerStocks"
# Connection settings
settings = {
    'userName': username,           # The name of the MySQL account to use (or empty for anonymous)
    'password': password,           # The password for the MySQL account (or empty for anonymous)
    'serverName': "localhost",    # The name of the computer running MySQL
    'portNumber': 3306,           # The port of the MySQL server (default is 3306)
    'dbName': dbn,             # The name of the database we are testing with (this default is installed with MySQL)
}



def create_entries_table(csv_file):
    tableName = csv_file
    metadata = MetaData(conn)
    tablecreate = Table(tableName, metadata,
                     Column('DATES', VARCHAR(45), primary_key= True),
                     Column('TICKER', VARCHAR(45), primary_key= True),
                     Column('PRICE', FLOAT),
                     Column('SOURCE', VARCHAR(45), primary_key= True))
    tablecreate.create()
    return(tablecreate)

def create_test_table(csv_file):
    tableName = csv_file
    metadata = MetaData(conn)
    tablecreate = Table(tableName, metadata,
                     Column('TICKER', VARCHAR(45), primary_key= True),
                     Column('coun', INT),
                     Column('minPRICE', FLOAT),
                     Column('maxPRICE', FLOAT, primary_key= True),
                     Column('dmax', VARCHAR(45), primary_key= True),
                     Column('dmin', VARCHAR(45)))
    tablecreate.create()
    return(tablecreate)


# Connect to the database
conn = create_engine('mysql://{0[userName]}:{0[password]}@{0[serverName]}:{0[portNumber]}/{0[dbName]}'.format(settings))
print('Connected to database')

class Exception(Exception):   # Custom exception class
    pass

def timeout_handler(signum, frame):   # Custom signal handler
    raise Exception

class KeyError(KeyError):
    pass

showTable = create_entries_table('TempEntries')
info_table= create_test_table('test_table')

def TickerFixer(ticker):
    after = False
    for c in ticker:
        if (c == "$"):
            after = True
        if (c != "$" and not c.isupper()):
            ticker = ticker.replace(c, "")
            after = False
        if not after:
            ticker = ticker.replace(c, "")
    return ticker

tweet_json = {"date": "",
             "stock": "",
              "price": ""}

def csv_convert(csvFile):
    CSVfile = open(csvFile, 'r')
    fieldnames = ("tweet_id", "date", "tweet_text")
    read = csv.DictReader(CSVfile, fieldnames)
    next(read, None)
    for row in read:
        del row["tweet_id"]
        text = row["tweet_text"]

        wordList = re.sub("[^\S]", " ",  text).split()
        indices = [i for i, s in enumerate(wordList) if '$' in s]
        if indices:
            stock = wordList.pop(indices.pop(0))
            stock = TickerFixer(stock)
            print(stock)
            dateString = row["date"]
            datestr = dateString[0:4] + " " + \
                      dateString[5:7] + " " + \
                      dateString[8:10] + " " + \
                      dateString[11:13] + " " + \
                      dateString[14:16] + " " + \
                      dateString[17:19]
            dateS = datetime.datetime.fromtimestamp(time.mktime(time.strptime(datestr, "%Y %m %d %H %M %S")))
            if (stock == "$") or (stock == "$$"):
                continue
            if stock.count("$") > 1:
                #maybe not working?
                secondStock = stock[stock[1:].find("$") + 1:]
                stock = stock[:stock[1:].find("$") + 1]
                tweet_json["date"] = time.strptime(datestr, "%Y %m %d %H %M %S")
                tweet_json["stock"] = secondStock
            tweet_json["stock"] = stock
            print(stock)
            if (stock == "$") or (stock == "$$"):
                continue
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(30)
            try:
                yahooStock = yahoo_finance.Share(stock[1:])
                price = None
                while(not price):
                    datesk = dateS.strftime("%Y-%m-%d")
                    price = yahooStock.get_historical(start_date=datesk, end_date=datesk)
                    dateS = dateS - datetime.timedelta(days=1)
                tweet_json["price"] = float(price[0]['Close'])
                tweet_json["date"] = dateS.strftime("%Y-%m-%d %H:%M:%S")
                insert_stringShow = showTable.insert().prefix_with("IGNORE")
                conn.execute(insert_stringShow, DATES=tweet_json["date"],TICKER=tweet_json["stock"],
                             PRICE=tweet_json["price"],
                             SOURCE=csvFile[:-4])
                insert_strint = info_table.insert().prefix_with("IGNORE")
                conn.execute(insert_strint, TICKER=tweet_json["stock"] , coun=1,
                             minPRICE=tweet_json["price"], maxPRICE =tweet_json["price"], dmax=tweet_json["date"],
                 dmin=tweet_json["date"])
            except Exception, KeyError:
                pass

def run(csv_file):
    csv_convert(csv_file)
    conn.execute("""
                INSERT IGNORE INTO entries (DATES, TICKER, PRICE, SourceID)
                SELECT DATES, TICKER, PRICE, s.id
                FROM TempEntries, Source as s
                WHERE TempEntries.source = s.source;
                            """)