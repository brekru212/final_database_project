import csv
import json
import re
import time
import datetime
import yahoo_finance
import signal


#import @JimCramer_tweets.csv


from sqlalchemy import *

username = "root"
password = "DelPotro06"
dbn = "JimCramerStocks"
# Connection settings
settings = {
    'userName': username,           # The name of the MySQL account to use (or empty for anonymous)
    'password': password,           # The password for the MySQL account (or empty for anonymous)
    'serverName': "localhost",    # The name of the computer running MySQL
    'portNumber': 3306,           # The port of the MySQL server (default is 3306)
    'dbName': dbn,             # The name of the database we are testing with (this default is installed with MySQL)
}



def create_table(csv_file):
    tableName = csv_file[:-4]
    metadata = MetaData(conn)
    tablecreate = Table(tableName, metadata,
                     Column('DATES', VARCHAR(45), primary_key= True),
                     Column('TICKER', VARCHAR(45), primary_key= True),
                     Column('PRICE', FLOAT),
                     Column('SOURCE', VARCHAR(45), primary_key= True))
    tablecreate.create()
    return(tablecreate)





# Connect to the database
conn = create_engine('mysql://{0[userName]}:{0[password]}@{0[serverName]}:{0[portNumber]}/{0[dbName]}'.format(settings))
#print('Connected to database')

''''
tableN = Table('FoundInfo', MetaData(conn),
                     Column('DATES', VARCHAR(45), primary_key= True),
                     Column('TICKER', VARCHAR(45)),
                     Column('PRICE', FLOAT),
                     Column('SOURCE', VARCHAR(45)))


'''
'''
# Create a table
create_string = """
    CREATE TABLE {} (
    TICKER BLOB NOT NULL,
    DATES TIMESTAMP NOT NULL,
    PRICE DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (DATES))
    """.format(tableName)
cur.execute(create_string)
print('Created a table')
'''

class Exception(Exception):   # Custom exception class
    pass

def timeout_handler(signum, frame):   # Custom signal handler
    raise Exception

class KeyError(KeyError):
    pass


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

    #newcsvFILE = open('stocks_tweets.csv', 'w')
    fieldnames = ("tweet_id", "date", "tweet_text")
    #csvWriter = csv.DictWriter(newcsvFILE, fieldnames=["date","stock","price"])
    #csvWriter.writeheader()
    read = csv.DictReader(CSVfile, fieldnames)
    next(read, None)
    tableN = create_table(csvFile)
    for row in read:
        #print(row)
        del row["tweet_id"]
        text = row["tweet_text"]
        #print(text)
        #text.split()
        wordList = re.sub("[^\S]", " ",  text).split()
        #print(wordList)
        indices = [i for i, s in enumerate(wordList) if '$' in s]
        #print(indices)
        if indices:
            stock = wordList.pop(indices.pop(0))
            stock = TickerFixer(stock)
            dateString = row["date"]
            datestr = dateString[0:4] + " " + \
                      dateString[5:7] + " " + \
                      dateString[8:10] + " " + \
                      dateString[11:13] + " " + \
                      dateString[14:16] + " " + \
                      dateString[17:19]
            dateS = datetime.datetime.fromtimestamp(time.mktime(time.strptime(datestr, "%Y %m %d %H %M %S")))
           # date = time.strptime(row["date"], "%y-%m-%d %H:%M%S")
            if (stock == "$") or (stock == "$$"):
                print("skip")
                continue
            if stock.count("$") > 1:
                #maybe not working?
                secondStock = stock[stock[1:].find("$") + 1:]
                stock = stock[:stock[1:].find("$") + 1]
                tweet_json["date"] = time.strptime(datestr, "%Y %m %d %H %M %S")
                tweet_json["stock"] = secondStock
                #json.dump(tweet_json, jsonFile)
                #jsonFile.write('\n')
            tweet_json["date"] = time.strptime(datestr, "%Y %m %d %H %M %S")
            tweet_json["stock"] = stock
            print(stock)
            if (stock == "$") or (stock == "$$"):
                print("skip")
                continue
            signal.signal(signal.SIGALRM, timeout_handler)
            signal.alarm(30)
            try:
                yahooStock = yahoo_finance.Share(stock[1:])
                datesk = dateS.strftime("%Y-%m-%d")
                price = yahooStock.get_historical(start_date=datesk, end_date=datesk)
                while(not price):
                    dateS = dateS - datetime.timedelta(days=1)
                    datesk = dateS.strftime("%Y-%m-%d")
                    price = yahooStock.get_historical(start_date=datesk, end_date=datesk)
                print(price)
                print(dateS.strftime("%Y-%m-%d"))
           # tweet_json["price"] = (yahooStock.get_historical(start_date=dateS.strftime("%Y-%m-%d"), end_date=dateS.strftime("%Y-%m-%d")))[0]['Close']
                tweet_json["price"] = float(price[0]['Close'])
                tweet_json["date"] = dateS.strftime("%Y-%m-%d %H:%M:%S")
                #csvWriter.writerow(tweet_json)
                #json.dump(tweet_json, jsonFile)
                #jsonFile.write(',\n')
                insert_string = tableN.insert().prefix_with("IGNORE")
                   # ('INSERT INTO {0} (TICKER, DATES, PRICE) VALUES ({1}, {2}, {3})'.format(
                    #dbn + '.' + tableName, tweet_json["stock"], tweet_json["date"], tweet_json["price"]))
                conn.execute(insert_string, DATES=tweet_json["date"],TICKER=tweet_json["stock"],
                             PRICE=tweet_json["price"],
                             SOURCE=csvFile[:-4])
            except Exception, KeyError:
                pass

            '''
            if dateS.weekday() > 4:
                dateS = dateS - datetime.timedelta(days=dateS.weekday()-4)
            if dateS in holidays.UnitedStates():
                dateS = dateS - datetime.timedelta(days=dateS.weekday()-1)
            '''

            #print(tweet_json)
    #print(wordList)
        #tweet_json["date"] = row["date"]
        #indices = [i for i, s in enumerate(text) if '$' in s]
        #stock = text.get(indices)
        #tweet_json["stock"] = stock
        #print(tweet_json)

#csv_convert(@JimCramer_tweets.csv)

        #json.dump(tweet_json, jsonFile)
        #jsonFile.write('\n')

def run(csv_file):
    csv_convert(csv_file)

#,, , ,
     #
      #                 '@SquawkCNBC', '@SquawkStreet', '@StockTwits']'@Benzinga'
#
# '@kaylatausche''@davidfaber' '@jimcramer', 4/13
# '@MelissaLeeCNBC', '@ScottapnerCNBC', '@CNBCClosingBell', '@CNBCFastMoney', '@HalftimeReport', 4/11
# '@PowerLunch',4/8
# '@MadMoney' 4/5


list_of_screenNames = ['ScottWapnerCNBC_tweets.csv']#, , ',
                       #, ]
#'SquawkAlley_tweets.csv',
 #                      'SquawkStreet_tweets.csv','CNBCClosingBell_tweets.csv','CNBCFastMoney_tweets.csv',
  #                     'HalftimeReport_tweets.csv','PowerLunch_tweets.csv','MadMoney_tweets.csv']

for sname in list_of_screenNames:
    run(sname)
    print("Done" + sname)
    print("Done" + sname)
    print("Done" + sname)
    print("Done" + sname)
    print("Done" + sname)
    print("Done" + sname)
    print("Done" + sname)
    print("Done" + sname)
    print("Done" + sname)


'''
    stockList = list(ticker)
    leng = len(stockList)
    for ch in stockList:
        i = stockList.index(ch)
        if (ch != "$" and not ch.isupper()):
            stockList.pop(i)
    return stockList





print(TickerFixer("$TSLA"))
print(TickerFixer("$75"))
print(TickerFixer("own,.$AGN."))
print(TickerFixer("$AGN/$PFE"))
print(TickerFixer("do--$PFE-$AGN"))

"$YHOO.."
"$Z??"
"$WFC--actionalertsplus.com"
'''

#cur.close()
#conn.close()