library("twitteR")

api_key <- Sys.getenv("twitter_api_key")
api_secret <- Sys.getenv("twitter_api_secret")
access_token <- Sys.getenv("twitter_access_token")
access_token_secret <- Sys.getenv("twitter_access_token_secret")
options(httr_oauth_cache = FALSE)
setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

user <- getUser("beattyfy")
dms <- dmGet()

# Get last 25 dms
# Eliminate those from the previous 24 hours
# If this is 0, then repeat?
# Does this look like a math question?
# If you see a mathematical expression, respond with answer
# If you can parse it, answer, if not apologize
# Log

# log
# line <- paste(as.character(Sys.time()), tweettxt, sep="t")
# write(line, file="tweets.log", append=TRUE)


# More info:
# http://www.r-datacollection.com/blog/How-to-conduct-a-tombola-with-R/
# http://www.r-datacollection.com/blog/Programming-a-Twitter-bot/

# Use crontabs to schedule
# https://nerdsrule.co/2013/09/03/scheduling-r-tasks-with-crontab-to-conserve-memory/
# crontab -u yourusername -e
# 0 0 * * * Rscript /home/user/dirtoscript/script.r