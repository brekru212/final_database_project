import csv
import re
import time
import datetime
import yahoo_finance
import signal
from sqlalchemy import *

def create_entries_table(csv_file, conn):
    tableName = csv_file
    metadata = MetaData(conn)
    tablecreate = Table(tableName, metadata,
                     Column('DATES', VARCHAR(45), primary_key= True),
                     Column('TICKER', VARCHAR(45), primary_key= True),
                     Column('PRICE', FLOAT),
                     Column('SOURCE', VARCHAR(45), primary_key= True))
    tablecreate.create()
    return(tablecreate)

def create_test_table(csv_file, conn):
    tableName = csv_file
    metadata = MetaData(conn)
    tablecreate = Table(tableName, metadata,
                     Column('TICKER', VARCHAR(45), primary_key= True),
                     Column('coun', INT),
                     Column('minPRICE', FLOAT),
                     Column('maxPRICE', FLOAT),
                     Column('dmax', VARCHAR(45)),
                     Column('dmin', VARCHAR(45)))
    tablecreate.create()
    return(tablecreate)

class e(Exception):
    pass

class Exception(Exception):   # Custom exception class
    pass

def timeout_handler(signum, frame):   # Custom signal handler
    raise Exception

class KeyError(KeyError):
    pass

class AttributeError(AttributeError):
    pass



def TickerFixer(ticker):
    after = False
    index = 0
    start = 0
    end = 0
    for c in ticker:
        index += 1
        if (c == "$") and end==0:
            after = True
            start = index - 1
            continue
        if after and c.isupper():
            end = index
            continue
        if after and not (c.isupper()):
            after = False
            continue
    return ticker[start:end]

tweet_json = {"date": "",
             "stock": "",
              "price": ""}

def csv_convert(csvFile, conn):
    temptable = create_entries_table('TempEntries', conn)
    testtable = create_test_table('test_table', conn)
    CSVfile = open(csvFile, 'r')
    fieldnames = ("tweet_id", "date", "tweet_text")
    read = csv.DictReader(CSVfile, fieldnames)
    next(read, None)
    for row in read:
        del row["tweet_id"]
        text = row["tweet_text"]
        wordList = re.sub("[^\S]", " ",  text).split()
        print(wordList)
        indices = [i for i, s in enumerate(wordList) if '$' in s]
        if indices:
            for i in indices:
                stock = wordList[i]
                print(stock)
                stock = TickerFixer(stock)
                print(stock)
                if (stock == "$") or (stock == "$$") or (stock == "$$$") or (stock == ''):
                    continue

                dateString = row["date"]
                datestr = dateString[0:4] + " " + \
                          dateString[5:7] + " " + \
                          dateString[8:10] + " " + \
                          dateString[11:13] + " " + \
                          dateString[14:16] + " " + \
                          dateString[17:19]
                dateS = datetime.datetime.fromtimestamp(time.mktime(time.strptime(datestr, "%Y %m %d %H %M %S")))
                print dateS
                tweet_json["stock"] = stock
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
                    print tweet_json
                    insert_stringShow = temptable.insert().prefix_with("IGNORE")
                    conn.execute(insert_stringShow, DATES=tweet_json["date"],TICKER=tweet_json["stock"],
                                 PRICE=tweet_json["price"], SOURCE=csvFile[:-4])
                    insert_strint= testtable.insert().prefix_with("IGNORE")
                    conn.execute(insert_strint, TICKER=tweet_json["stock"] , coun=1,
                                 minPRICE=tweet_json["price"], maxPRICE =tweet_json["price"], dmax=tweet_json["date"],
                     dmin=tweet_json["date"])
                except (Exception, KeyError, AttributeError) as e:
                    pass
    print('done with creating test tables')


def run(csv_file, conn):
    csv_convert(csv_file, conn)
    conn.execute("""
                INSERT IGNORE INTO entries (DATES, TICKER, PRICE, SourceID)
                SELECT DATES, TICKER, PRICE, s.id
                FROM TempEntries, Source as s
                WHERE TempEntries.source = s.source;
                            """)
    conn.execute("""
    UPDATE
    anaTest.test_table AS tt
	JOIN (
SELECT si.TICKER as TICKER, tv.price as PRICE, si.FirstDate as dmin
FROM anaTest.StockInformation as si JOIN anaTest.entries as tv ON si.ticker = tv.ticker
WHERE si.FirstDate = tv.dates
GROUP BY si.TICKER, tv.price
    ) AS m ON
        m.TICKER = tt.TICKER
SET
    tt.minPRICE = m.PRICE;
    """)