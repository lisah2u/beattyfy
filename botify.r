library("twitteR")

api_key <- Sys.getenv("twitter_api_key")
api_secret <- Sys.getenv("twitter_api_secret")
access_token <- Sys.getenv("twitter_access_token")
access_token_secret <- Sys.getenv("twitter_access_token_secret")
setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

user <- getUser("RDataCollection")
user$getFollowersCount()

# log
line <- paste(as.character(Sys.time()), tweettxt, sep="t")
write(line, file="tweets.log", append=TRUE)


# More info:
# http://www.r-datacollection.com/blog/How-to-conduct-a-tombola-with-R/
# http://www.r-datacollection.com/blog/Programming-a-Twitter-bot/
