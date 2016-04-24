import tweepy
from tweepy import OAuthHandler
from sqlalchemy import *

username = 'nope'
password = 'nope'
dbn = "anaTest"
# Connection settings
settings = {
    'userName': username,           # The name of the MySQL account to use (or empty for anonymous)
    'password': password,           # The password for the MySQL account (or empty for anonymous)
    'serverName': "localhost",    # The name of the computer running MySQL
    'portNumber': 3306,           # The port of the MySQL server (default is 3306)
    'dbName': dbn,             # The name of the database we are testing with (this default is installed with MySQL)
}


consumer_key = 'nope'
consumer_secret = 'nope'
access_token = 'nope'
access_secret = 'nope'


def get_twitter_auth():
    auth = OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_secret)
    api = tweepy.API(auth)
    return api


def get_dbConn():
    # Connect to the database
    conn = create_engine('mysql://{0[userName]}:{0[password]}@{0[serverName]}:{0[portNumber]}/{0[dbName]}'.format(settings))
    print('Connected to database')
    return conn

