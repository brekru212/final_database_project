import tweepy
from tweepy import OAuthHandler
import csv
from tweet_csv_converter import run
import time
#from Cramer_bot.get_stocks import json_stock_info


consumer_key = '1R44siZpuxAEItrLGIKYp8Uvm'
consumer_secret = 'X5C4X9FPFygKXA8ATgu337mwUSa7vAtj6Q5eapTSA9K3gJ2yRb'
access_token = '706564673349427201-WjPUbv8NbqPbngJ12LmxsB7CA55st3x'
access_secret = 'NLWAqkmy8GOaK6SkvGPVM3y0oSEsqs4lCfGPT5qg3Bw29'

auth = OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_secret)

api = tweepy.API(auth)



def get_all_tweets(screen_name):

    #Twitter only allows access to a users most recent 3240 tweets with this method

    #authorize twitter, initialize tweepy

    #initialize a list to hold all the tweepy Tweets
    alltweets = []

    #make initial request for most recent tweets (200 is the maximum allowed count)
    new_tweets = api.user_timeline(screen_name = screen_name,count=200)
    for tweet in new_tweets:
        if '$' not in tweet.text:
            new_tweets.remove(tweet)
    #save most recent tweets
    alltweets.extend(new_tweets)

    #save the id of the oldest tweet less one
    oldest = alltweets[-1].id - 1

    #keep grabbing tweets until there are no tweets left to grab
    while len(new_tweets) > 0:
        print("getting tweets before %s" % (oldest))

        #all subsiquent requests use the max_id param to prevent duplicates
        new_tweets = api.user_timeline(screen_name = screen_name,count=200,max_id=oldest)
        '''
        for tweet in new_tweets:
            if '$' not in tweet.text:
                new_tweets.remove(tweet)

            else:
                text = tweet.text.split()
                indices = [i for i, s in enumerate(text) if '$' in s]
                stock = text.get(indices)
                json_stock_info(stock)
        '''
        #save most recent tweets
        alltweets.extend(new_tweets)

        #update the id of the oldest tweet less one
        oldest = alltweets[-1].id - 1

        print("...%s tweets downloaded so far" % (len(alltweets)))


    #write the csv
    csvfile = open('%s_tweets.csv' % screen_name[1:], 'w')
    fieldnames = ['tweet_id', 'date', 'tweet_text']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    for tweet in alltweets:
        writer.writerow({'tweet_id':tweet.id_str,
                        'date':tweet.created_at,
                        'tweet_text':tweet.text.encode('utf-8')})
    csvfile.close()
    return('%s_tweets.csv' % screen_name[1:])

list_of_screenNames = []
    #,, , ,
     #                  ,'@SquawkAlley',
      #                 '@SquawkCNBC', '@SquawkStreet', '@StockTwits']'@Benzinga'
#
# '@kaylatausche''@davidfaber' '@jimcramer', 4/13
# '@MelissaLeeCNBC', '@ScottapnerCNBC', '@CNBCClosingBell', '@CNBCFastMoney', '@HalftimeReport', 4/11
# '@PowerLunch',4/8
# '@MadMoney' 4/5

for sname in list_of_screenNames:
    csvf = get_all_tweets(screen_name=sname)
    run(csvf)
    print('DONE')
    time.sleep(5)

