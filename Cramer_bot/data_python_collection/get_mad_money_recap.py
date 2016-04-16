#html scraping from thestreet.com
from lxml import html
import requests

page = requests.get('http://www.thestreet.com/story/10230095/1/cramers-mad-money-recap-more-oil-plays.html')
tree = html.fromstring(page.content)

#This will create a list of buyers:

#This will create a list of prices
ticker = tree.xpath('//a[@href="/quote/FLR.html"]/text()')

print ticker