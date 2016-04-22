import tweepy
from tweepy import OAuthHandler
import csv
from tweet_csv_converter import run



consumer_key = ''
consumer_secret = ''
access_token = ''
access_secret = ''

auth = OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_secret)

api = tweepy.API(auth)



def get_all_tweets(screen_name):

    #Twitter only allows access to a users most recent 3240 tweets with this method

    csvfile = open('%s_tweets.csv' % screen_name[1:], 'w')
    fieldnames = ['tweet_id', 'date', 'tweet_text']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
    writer.writeheader()

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
        for tweet in new_tweets:
            writer.writerow({'tweet_id':tweet.id_str,
                            'date':tweet.created_at,
                            'tweet_text':tweet.text.encode('utf-8')})

        #save most recent tweets
        alltweets.extend(new_tweets)

        #update the id of the oldest tweet less one
        oldest = alltweets[-1].id - 1

        print("...%s tweets downloaded so far" % (len(alltweets)))
    csvfile.close()
    return('%s_tweets.csv' % screen_name[1:])

#@jimcramer 4/20
      #                 , , '@StockTwits']'@Benzinga'
#'@MadMoneyOnCNBC'. '@SquawkAlley', '@Squawkstreet', '@SquawkCNBC' '@CNBCClosingBell', '@CNBCFastMoney','@HalftimeReport' 4/18
# '@kaylatausche''@davidfaber' , 4/13
# '@MelissaLeeCNBC', '@ScottapnerCNBC',  , , 4/11

def run_tweet_to_table(source):
    csvf = get_all_tweets(screen_name=source)
    run(csvf)
    print('DONE')

#run_tweet_to_table('@CNBCClosingBell')
